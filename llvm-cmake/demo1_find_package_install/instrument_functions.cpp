#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
    struct InstrumentPass : public FunctionPass {
        static char ID;

        InstrumentPass() : FunctionPass(ID) {}

        bool runOnFunction(Function &F) override {
            for (auto &BB : F) {
                for (auto &I : BB) {
                    if (auto *Call = dyn_cast<CallBase>(&I)) {
                        // 在函数调用处插入回调函数
                        insertCallback(Call, "__cyg_profile_func_enter");
                    } else if (auto *Ret = dyn_cast<ReturnInst>(&I)) {
                        // 在函数返回处插入回调函数
                        insertCallback(Ret, "__cyg_profile_func_exit");
                    }
                }
            }
            return false;
        }

        void insertCallback(Instruction *Inst, const std::string &CallbackName) {
            // 创建回调函数的调用指令
            // FunctionType *CallbackType = FunctionType::get(Type::getVoidTy(Inst->getContext()), {Type::getInt8PtrTy(Inst->getContext())}, false);
            // Constant *CallbackFunc = Inst->getModule()->getOrInsertFunction(CallbackName, CallbackType);
            // CallInst::Create(CallbackFunc, {Inst->getFunction()->getName().data()}, "", Inst);
        }
    };
}

char InstrumentPass::ID = 0;

static RegisterPass<InstrumentPass> X("instrument", "Instrument Pass");

extern "C" {
    void __cyg_profile_func_enter(void *this_fn, void *call_site) {
        // 在回调函数中执行特定的操作
        llvm::errs() << "Callback function (__cyg_profile_func_enter) called with this_fn: " << this_fn << ", call_site: " << call_site << "\n";
    }

    void __cyg_profile_func_exit(void *this_fn, void *call_site) {
        // 在回调函数中执行特定的操作
        llvm::errs() << "Callback function (__cyg_profile_func_exit) called with this_fn: " << this_fn << ", call_site: " << call_site << "\n";
    }
}

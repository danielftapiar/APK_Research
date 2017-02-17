.class Lnet/veritran/component/VTInputText$6;
.super Ljava/lang/Object;
.source "VTInputText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/VTInputText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTInputText;


# direct methods
.method constructor <init>(Lnet/veritran/component/VTInputText;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTInputText;

    .prologue
    .line 1003
    iput-object p1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1008
    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    invoke-virtual {v1}, Lnet/veritran/component/VTInputText;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, "enteredText":Ljava/lang/String;
    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->autoDump:Ljava/lang/Integer;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1000(Lnet/veritran/component/VTInputText;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1011
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->autoDump:Ljava/lang/Integer;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$1000(Lnet/veritran/component/VTInputText;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    .line 1014
    :cond_0
    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->isInstantiationTime:Z
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1100(Lnet/veritran/component/VTInputText;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->isInputPostInstEdited:Z
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1200(Lnet/veritran/component/VTInputText;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onChange:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1300(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onChange:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1300(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->lastEnteredText:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1400(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->lastEnteredText:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1400(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1015
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onChange:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$1300(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/VTUserApplicationSmart;->processAction(Ljava/lang/String;)V

    .line 1018
    :cond_1
    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # setter for: Lnet/veritran/component/VTInputText;->lastEnteredText:Ljava/lang/String;
    invoke-static {v1, v0}, Lnet/veritran/component/VTInputText;->access$1402(Lnet/veritran/component/VTInputText;Ljava/lang/String;)Ljava/lang/String;

    .line 1020
    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->isInstantiationTime:Z
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1100(Lnet/veritran/component/VTInputText;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->isInputPostInstEdited:Z
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1200(Lnet/veritran/component/VTInputText;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1021
    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # invokes: Lnet/veritran/component/VTInputText;->validateRegex()Z
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1500(Lnet/veritran/component/VTInputText;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->minLength:I
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$1600(Lnet/veritran/component/VTInputText;)I

    move-result v2

    if-lt v1, v2, :cond_7

    .line 1023
    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maxLength:I
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1700(Lnet/veritran/component/VTInputText;)I

    move-result v1

    if-eq v1, v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maxLength:I
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$1700(Lnet/veritran/component/VTInputText;)I

    move-result v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onCompleteValid:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1800(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onCompleteValid:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1800(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1025
    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->isRequired:Z
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1900(Lnet/veritran/component/VTInputText;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1027
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1028
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onCompleteValid:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$1800(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/VTUserApplicationSmart;->processAction(Ljava/lang/String;)V

    .line 1089
    :cond_2
    :goto_0
    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->isInstantiationTime:Z
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1100(Lnet/veritran/component/VTInputText;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->isInputPostInstEdited:Z
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1200(Lnet/veritran/component/VTInputText;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onClear:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$2300(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onClear:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$2300(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->isRetrievingFromBundle:Z
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$2400(Lnet/veritran/component/VTInputText;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1090
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onClear:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$2300(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/VTUserApplicationSmart;->processAction(Ljava/lang/String;)V

    .line 1092
    :cond_3
    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    const/4 v2, 0x0

    # setter for: Lnet/veritran/component/VTInputText;->isInstantiationTime:Z
    invoke-static {v1, v2}, Lnet/veritran/component/VTInputText;->access$1102(Lnet/veritran/component/VTInputText;Z)Z

    .line 1093
    return-void

    .line 1029
    :cond_4
    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onValid:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$2000(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onValid:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$2000(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1030
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onInvalid:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$2100(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/VTUserApplicationSmart;->processAction(Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    :cond_5
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onCompleteValid:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$1800(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/VTUserApplicationSmart;->processAction(Ljava/lang/String;)V

    goto :goto_0

    .line 1036
    :cond_6
    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onValid:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$2000(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onValid:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$2000(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1037
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onValid:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$2000(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/VTUserApplicationSmart;->processAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1041
    :cond_7
    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maxLength:I
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$1700(Lnet/veritran/component/VTInputText;)I

    move-result v1

    if-eq v1, v3, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->maxLength:I
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$1700(Lnet/veritran/component/VTInputText;)I

    move-result v2

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onCompleteInvalid:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$2200(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onCompleteInvalid:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$2200(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1042
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onCompleteInvalid:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$2200(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/VTUserApplicationSmart;->processAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1043
    :cond_8
    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onInvalid:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$2100(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onInvalid:Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/VTInputText;->access$2100(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1044
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/VTInputText$6;->this$0:Lnet/veritran/component/VTInputText;

    # getter for: Lnet/veritran/component/VTInputText;->onInvalid:Ljava/lang/String;
    invoke-static {v2}, Lnet/veritran/component/VTInputText;->access$2100(Lnet/veritran/component/VTInputText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/VTUserApplicationSmart;->processAction(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

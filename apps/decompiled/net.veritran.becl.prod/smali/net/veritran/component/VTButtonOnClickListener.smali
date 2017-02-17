.class public Lnet/veritran/component/VTButtonOnClickListener;
.super Ljava/lang/Object;
.source "VTButtonOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTButtonOnClickListener"


# instance fields
.field private action:Ljava/lang/String;

.field private arrayId:Ljava/lang/Integer;

.field private arrayRow:Ljava/lang/Integer;

.field private dumpValue:Ljava/lang/String;

.field private formId:Ljava/lang/String;

.field private targetVar:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "arrayId"    # I
    .param p4, "arrayRow"    # I
    .param p5, "targetVar"    # Ljava/lang/String;
    .param p6, "dumpValue"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "VTButtonOnClickListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VTButtonOnClickListener: 2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput p1, p0, Lnet/veritran/component/VTButtonOnClickListener;->type:I

    .line 45
    iput-object p2, p0, Lnet/veritran/component/VTButtonOnClickListener;->action:Ljava/lang/String;

    .line 46
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTButtonOnClickListener;->arrayId:Ljava/lang/Integer;

    .line 47
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTButtonOnClickListener;->arrayRow:Ljava/lang/Integer;

    .line 48
    iput-object p5, p0, Lnet/veritran/component/VTButtonOnClickListener;->targetVar:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lnet/veritran/component/VTButtonOnClickListener;->dumpValue:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "targetVar"    # Ljava/lang/String;
    .param p4, "dumpValue"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "VTButtonOnClickListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VTButtonOnClickListener: 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput p1, p0, Lnet/veritran/component/VTButtonOnClickListener;->type:I

    .line 26
    iput-object p2, p0, Lnet/veritran/component/VTButtonOnClickListener;->action:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lnet/veritran/component/VTButtonOnClickListener;->targetVar:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lnet/veritran/component/VTButtonOnClickListener;->dumpValue:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "formId"    # Ljava/lang/String;
    .param p4, "targetVar"    # Ljava/lang/String;
    .param p5, "dumpValue"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "VTButtonOnClickListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VTButtonOnClickListener: 1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput p1, p0, Lnet/veritran/component/VTButtonOnClickListener;->type:I

    .line 34
    iput-object p2, p0, Lnet/veritran/component/VTButtonOnClickListener;->action:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lnet/veritran/component/VTButtonOnClickListener;->formId:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lnet/veritran/component/VTButtonOnClickListener;->targetVar:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lnet/veritran/component/VTButtonOnClickListener;->dumpValue:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    const-string v3, "VTButtonOnClickListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Onclick: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/veritran/component/VTButtonOnClickListener;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v2, 0x1

    .line 56
    .local v2, "validateOk":Z
    iget-object v3, p0, Lnet/veritran/component/VTButtonOnClickListener;->formId:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 57
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v3

    check-cast v3, Lnet/veritran/VTCommonActivity;

    iget-object v4, p0, Lnet/veritran/component/VTButtonOnClickListener;->formId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lnet/veritran/VTCommonActivity;->validateForm(Ljava/lang/String;)Z

    move-result v2

    .line 64
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 65
    iget-object v3, p0, Lnet/veritran/component/VTButtonOnClickListener;->targetVar:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/veritran/component/VTButtonOnClickListener;->dumpValue:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 66
    iget-object v3, p0, Lnet/veritran/component/VTButtonOnClickListener;->dumpValue:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lnet/veritran/function/parsers/ElementParser;->internalParse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "dumpValue":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    iget-object v4, p0, Lnet/veritran/component/VTButtonOnClickListener;->targetVar:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "dumpValue":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v3

    check-cast v3, Lnet/veritran/VTCommonActivity;

    iget-object v4, p0, Lnet/veritran/component/VTButtonOnClickListener;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    .line 75
    :cond_2
    return-void

    .line 58
    :cond_3
    iget-object v3, p0, Lnet/veritran/component/VTButtonOnClickListener;->arrayId:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 59
    const-string v3, "VTButtonOnClickListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Marking row "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/veritran/component/VTButtonOnClickListener;->arrayRow:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on array "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/veritran/component/VTButtonOnClickListener;->arrayId:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    iget-object v4, p0, Lnet/veritran/component/VTButtonOnClickListener;->arrayId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lnet/veritran/component/VTButtonOnClickListener;->arrayRow:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lnet/veritran/vtuserapplication/model/Model;->markRow(II)Z

    goto :goto_0

    .line 69
    .restart local v0    # "dumpValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "VTButtonOnClickListener"

    const-string v4, "Catched exception empty (fortify)"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

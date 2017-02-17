.class public Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;


# instance fields
.field private a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

.field private d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

.field private e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

.field private f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "processes"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->insertParent(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "process"

    const-string v2, "processes"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "step"

    const-string v2, "process"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "onerror"

    const-string v2, "step"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "error"

    const-string v2, "onerror"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "function"

    const-string v2, "step"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "input"

    const-string v2, "function"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "token"

    const-string v2, "input"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "intoken"

    const-string v2, "input"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "array"

    const-string v2, "input"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "inarray"

    const-string v2, "input"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "output"

    const-string v2, "function"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "token"

    const-string v2, "output"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "outtoken"

    const-string v2, "output"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "array"

    const-string v2, "output"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "outarray"

    const-string v2, "output"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "condition"

    const-string v2, "function"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "dump"

    const-string v2, "function"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "fcall"

    const-string v2, "function"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "callparam"

    const-string v2, "fcall"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "tcall"

    const-string v2, "function"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "tracking"

    const-string v2, "tcall"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "platform"

    const-string v2, "tracking"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "trackingParameter"

    const-string v2, "platform"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0

    return-void
.end method

.method public endDocument()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->b:Ljava/util/Stack;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "processes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "process"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->getProcessId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->serializeConfigurationProcess(Ljava/lang/String;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;Ljava/lang/String;)Z

    iput-object v4, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    const-string v0, "step"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->addStep(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->setProcess(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;)V

    iput-object v4, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    goto :goto_0

    :cond_3
    const-string v0, "onError"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->setOnError(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;)V

    iput-object v4, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

    goto :goto_0

    :cond_4
    const-string v0, "error"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "function"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->setFunction(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->setStep(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;)V

    iput-object v4, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    goto :goto_0

    :cond_5
    const-string v0, "input"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VTServiceFunction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v0, "output"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VTServiceFunction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v0, "token"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "intoken"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "outtoken"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "array"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "inarray"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "outarray"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "condition"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tracking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "platform"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "trackingParameter"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public getResult(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;
    .locals 3

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getSerializedConfigurationProcess(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    move-result-object v0

    return-object v0
.end method

.method public setFilter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->b:Ljava/util/Stack;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->getFirst()Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->b:Ljava/util/Stack;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "processes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "process"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    const/4 v1, 0x0

    :goto_0
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "processId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->setProcessId(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->b:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->getLink(Ljava/lang/Object;)Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/utils/Link;->getSons()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v3, 0x0

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/utils/Link;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    :goto_3
    if-nez v1, :cond_0

    goto :goto_2

    :cond_6
    const-string v4, "next"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->setNext(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v4, "onerrornext"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->setOnerrornext(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v1, "step"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    if-eqz v1, :cond_3

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    const/4 v1, 0x0

    :goto_4
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "stepId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->setStepId(I)V

    :cond_9
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    const-string v4, "functionType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->setFuntionType(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    const-string v4, "nextStep"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->setNextStep(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const-string v1, "onError"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    if-eqz v1, :cond_3

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

    const/4 v1, 0x0

    :goto_6
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "next"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;->setNext(Ljava/lang/String;)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    const-string v1, "error"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

    if-eqz v1, :cond_3

    new-instance v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;

    invoke-direct {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;-><init>()V

    const/4 v1, 0x0

    :goto_7
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_12

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->setType(Ljava/lang/String;)V

    :cond_f
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_10
    const-string v5, "code"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->setCode(Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    const-string v5, "next"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->setNext(Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->e:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;->addError(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;)V

    goto/16 :goto_2

    :cond_13
    const-string v1, "function"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->d:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    if-eqz v1, :cond_3

    const-string v11, ""

    const-string v10, ""

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v9, ""

    const-string v6, ""

    const-string v5, ""

    const-string v4, ""

    const-string v3, ""

    const-string v2, ""

    const/4 v1, 0x0

    move v12, v1

    :goto_9
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v12, v1, :cond_1e

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v14, "class"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    move-object v15, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v1

    move-object v1, v15

    :goto_a
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_9

    :cond_14
    const-string v14, "servicecode"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    move-object v10, v11

    move-object v15, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v1

    move-object v1, v2

    move-object v2, v15

    goto :goto_a

    :cond_15
    const-string v14, "async"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    if-eqz v1, :cond_16

    const-string v8, "true"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :goto_b
    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v15, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v15

    goto :goto_a

    :cond_16
    const/4 v1, 0x0

    goto :goto_b

    :cond_17
    const-string v14, "asyncnext"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v15, v6

    move-object v6, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v15

    goto :goto_a

    :cond_18
    const-string v14, "input"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_19

    move-object v9, v10

    move-object v10, v11

    move-object v15, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v15

    goto :goto_a

    :cond_19
    const-string v14, "output"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v15, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v1

    move-object v1, v15

    goto :goto_a

    :cond_1a
    const-string v14, "defaultValue"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1b

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v15, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v15

    goto/16 :goto_a

    :cond_1b
    const-string v14, "message"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1c

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v15, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v15

    goto/16 :goto_a

    :cond_1c
    const-string v14, "apiid"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1d

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    goto/16 :goto_a

    :cond_1d
    const-string v14, "functionId"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5e

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    goto/16 :goto_a

    :cond_1e
    const-string v1, "VTServiceFunction"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v1, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->setServiceCode(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v1, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->setMessage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v1, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->setIsAsync(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v1, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->setAsyncNext(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1f
    const-string v1, "VTBranchFunction"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;

    invoke-virtual {v1, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;->setDefaultValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;

    invoke-virtual {v1, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;->setInput(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;

    invoke-virtual {v1, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;->setOutput(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_20
    const-string v1, "VTMathFunction"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;

    invoke-virtual {v1, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;->setInput(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;

    invoke-virtual {v1, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;->setOutput(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_21
    const-string v1, "VTDumpStorageFunction"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpStorage;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpStorage;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    goto/16 :goto_2

    :cond_22
    const-string v1, "VTStringUtilsFunction"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTStringUtils;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTStringUtils;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    goto/16 :goto_2

    :cond_23
    const-string v1, "VTCallAPIFunction"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;

    invoke-virtual {v1, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;->setApiId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;->setFunctionId(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_24
    const-string v1, "VTArrayFunction"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTArray;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    goto/16 :goto_2

    :cond_25
    const-string v1, "VTTrackingUtilsFunction"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtils;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtils;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    goto/16 :goto_2

    :cond_26
    const-string v1, "VTCacheFunction"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCache;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCache;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    goto/16 :goto_2

    :cond_27
    const-string v1, "input"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTServiceFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "input"

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->g:Ljava/lang/String;

    goto/16 :goto_2

    :cond_28
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTCallAPIFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPIItem;

    invoke-direct {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPIItem;-><init>()V

    const/4 v1, 0x0

    :goto_c
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_2b

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "registerId"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPIItem;->setRegisterId(Ljava/lang/String;)V

    :cond_29
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2a
    const-string v5, "value"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPIItem;->setValue(Ljava/lang/String;)V

    goto :goto_d

    :cond_2b
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;->addCallAPIItem(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPIItem;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;

    invoke-virtual {v2, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPIItem;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTCallAPI;)V

    goto/16 :goto_2

    :cond_2c
    const-string v1, "output"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTServiceFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "output"

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->g:Ljava/lang/String;

    goto/16 :goto_2

    :cond_2d
    const-string v1, "token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "intoken"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "outtoken"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTServiceFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceRegister;

    invoke-direct {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceRegister;-><init>()V

    const/4 v1, 0x0

    :goto_e
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_31

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tokenId"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceRegister;->setRegisterId(Ljava/lang/String;)V

    :cond_2f
    :goto_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_30
    const-string v5, "value"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceRegister;->setValue(Ljava/lang/String;)V

    goto :goto_f

    :cond_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->g:Ljava/lang/String;

    const-string v3, "input"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->addInputRegister(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceRegister;)V

    goto/16 :goto_2

    :cond_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->g:Ljava/lang/String;

    const-string v3, "output"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->addOutputRegister(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceRegister;)V

    goto/16 :goto_2

    :cond_33
    const-string v1, "array"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "inarray"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "outarray"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    :cond_34
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTServiceFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceArray;

    invoke-direct {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceArray;-><init>()V

    const/4 v1, 0x0

    :goto_10
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_36

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "arrayId"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceArray;->setArrayId(Ljava/lang/String;)V

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_36
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->g:Ljava/lang/String;

    const-string v3, "input"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->addInputArray(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceArray;)V

    goto/16 :goto_2

    :cond_37
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->g:Ljava/lang/String;

    const-string v3, "output"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->addOutputArray(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceArray;)V

    goto/16 :goto_2

    :cond_38
    const-string v1, "condition"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTBranchFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;

    invoke-direct {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;-><init>()V

    const/4 v1, 0x0

    :goto_11
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_3d

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "operation"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->setOperation(Ljava/lang/String;)V

    :cond_39
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_3a
    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->setType(Ljava/lang/String;)V

    goto :goto_12

    :cond_3b
    const-string v5, "value"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->setValue(Ljava/lang/String;)V

    goto :goto_12

    :cond_3c
    const-string v5, "result"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->setResult(Ljava/lang/String;)V

    goto :goto_12

    :cond_3d
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;->addCondition(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;

    invoke-virtual {v2, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranchCondition;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTBranch;)V

    goto/16 :goto_2

    :cond_3e
    const-string v1, "dump"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTDumpStorageFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpItem;

    invoke-direct {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpItem;-><init>()V

    const/4 v1, 0x0

    :goto_13
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_44

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "input"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpItem;->setInput(Ljava/lang/String;)V

    :cond_3f
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_40
    const-string v5, "output"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpItem;->setOutput(Ljava/lang/String;)V

    goto :goto_14

    :cond_41
    const-string v5, "array"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpItem;->setArray(Ljava/lang/String;)V

    goto :goto_14

    :cond_42
    const-string v5, "clean"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpItem;->setClean(Ljava/lang/String;)V

    goto :goto_14

    :cond_43
    const-string v5, "image"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpItem;->setImage(Ljava/lang/String;)V

    goto :goto_14

    :cond_44
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpStorage;

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpStorage;->addDumpItem(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpItem;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpStorage;

    invoke-virtual {v2, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpItem;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTDumpStorage;)V

    goto/16 :goto_2

    :cond_45
    const-string v1, "tcall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTTrackingUtilsFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v3, v1

    :goto_15
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v3, v1, :cond_4a

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "method"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    const-string v1, "register"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    new-instance v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItemRegister;

    invoke-direct {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItemRegister;-><init>()V

    :cond_46
    :goto_16
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_15

    :cond_47
    const-string v1, "track"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    if-nez v2, :cond_46

    new-instance v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItemTracker;

    invoke-direct {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItemTracker;-><init>()V

    goto :goto_16

    :cond_48
    const-string v5, "trackingid"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    if-nez v2, :cond_49

    new-instance v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItemTracker;

    invoke-direct {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItemTracker;-><init>()V

    :cond_49
    move-object v1, v2

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItemTracker;

    invoke-virtual {v1, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItemTracker;->setTrackingId(Ljava/lang/String;)V

    goto :goto_16

    :cond_4a
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->addFuntionCall(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallInterface;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v2, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItem;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;)V

    goto/16 :goto_2

    :cond_4b
    const-string v1, "fcall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTStringUtilsFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTArrayFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTCacheFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_4c
    new-instance v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCall;

    invoke-direct {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCall;-><init>()V

    const/4 v1, 0x0

    :goto_17
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_4f

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "method"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCall;->setMethod(Ljava/lang/String;)V

    :cond_4d
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_4e
    const-string v5, "output"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCall;->setOutput(Ljava/lang/String;)V

    goto :goto_18

    :cond_4f
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->addFuntionCall(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallInterface;)V

    goto/16 :goto_2

    :cond_50
    const-string v1, "callparam"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    if-eqz v1, :cond_3

    new-instance v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;

    invoke-direct {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;-><init>()V

    const/4 v1, 0x0

    :goto_19
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_53

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "order"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;->setOrder(Ljava/lang/String;)V

    :cond_51
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_52
    const-string v5, "value"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;->setValue(Ljava/lang/String;)V

    goto :goto_1a

    :cond_53
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->addFunctionCallParam(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;)V

    goto/16 :goto_2

    :cond_54
    const-string v1, "tracking"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTTrackingUtilsFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getLastFuntionCall()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallInterface;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItemRegister;

    new-instance v3, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsEvent;

    invoke-direct {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsEvent;-><init>()V

    const/4 v2, 0x0

    :goto_1b
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_56

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-virtual {v3, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsEvent;->setTrackingEventId(Ljava/lang/String;)V

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_56
    invoke-virtual {v1, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItemRegister;->addTrackingEvent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsEvent;)V

    goto/16 :goto_2

    :cond_57
    const-string v1, "platform"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTTrackingUtilsFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getLastFuntionCall()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallInterface;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItemRegister;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItemRegister;->getLastTrackingEvent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsEvent;

    move-result-object v2

    new-instance v3, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsPlatform;

    invoke-direct {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsPlatform;-><init>()V

    const/4 v1, 0x0

    :goto_1c
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_59

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-virtual {v3, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsPlatform;->setPlatformId(Ljava/lang/String;)V

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_59
    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsEvent;->addPlatform(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsPlatform;)V

    goto/16 :goto_2

    :cond_5a
    const-string v1, "trackingParameter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getFunctionClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VTTrackingUtilsFunction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/vtuserapplication/configuration/ConfigurationProcessHandler;->f:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;->getLastFuntionCall()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallInterface;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItemRegister;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItemRegister;->getLastTrackingEvent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsEvent;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsEvent;->getLastPlatform()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsPlatform;

    move-result-object v2

    new-instance v3, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsPlatformParameter;

    invoke-direct {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsPlatformParameter;-><init>()V

    const/4 v1, 0x0

    :goto_1d
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_5d

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "key"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-virtual {v3, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsPlatformParameter;->setParamKey(Ljava/lang/String;)V

    :cond_5b
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_5c
    const-string v6, "value"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-virtual {v3, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsPlatformParameter;->setParamValue(Ljava/lang/String;)V

    goto :goto_1e

    :cond_5d
    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsPlatform;->addParameter(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsPlatformParameter;)V

    goto/16 :goto_2

    :cond_5e
    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    goto/16 :goto_a

    :cond_5f
    move v1, v3

    goto/16 :goto_3
.end method

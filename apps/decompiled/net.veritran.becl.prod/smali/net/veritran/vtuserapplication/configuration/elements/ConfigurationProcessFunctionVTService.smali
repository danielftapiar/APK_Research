.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceRegister;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceArray;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceRegister;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->h:Ljava/util/List;

    const-string v0, "VTServiceFunction"

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->setFunctionClass(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addInputArray(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceArray;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInputRegister(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceRegister;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOutputArray(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceArray;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOutputRegister(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceRegister;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAsyncNext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getInputArrays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceArray;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->f:Ljava/util/List;

    return-object v0
.end method

.method public getInputRegisters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceRegister;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->e:Ljava/util/List;

    return-object v0
.end method

.method public getIsAsync()Z
    .locals 1

    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->c:Z

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputArrays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceArray;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->h:Ljava/util/List;

    return-object v0
.end method

.method public getOutputRegisters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTServiceRegister;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->g:Ljava/util/List;

    return-object v0
.end method

.method public getServiceCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setAsyncNext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->d:Ljava/lang/String;

    return-void
.end method

.method public setIsAsync(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->c:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->b:Ljava/lang/String;

    return-void
.end method

.method public setServiceCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;->a:Ljava/lang/String;

    return-void
.end method

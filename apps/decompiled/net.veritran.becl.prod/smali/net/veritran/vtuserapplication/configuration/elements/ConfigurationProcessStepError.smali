.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->b:Ljava/lang/String;

    return-void
.end method

.method public setNext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->c:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->a:Ljava/lang/String;

    return-void
.end method
.class public Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;
.super Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;-><init>()V

    const-string v0, "VTMathFunction"

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;->setFunctionClass(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getInput()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOutput()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;->a:Ljava/lang/String;

    return-void
.end method

.method public setOutput(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTMath;->b:Ljava/lang/String;

    return-void
.end method

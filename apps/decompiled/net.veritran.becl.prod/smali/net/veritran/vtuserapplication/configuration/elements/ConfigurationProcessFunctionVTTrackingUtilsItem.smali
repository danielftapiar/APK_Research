.class public abstract Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItem;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallInterface;


# static fields
.field public static final METHOD_REGISTER:I = 0x0

.field public static final METHOD_TRACKER:I = 0x1


# instance fields
.field private a:I

.field private b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addParam(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionCallParam;)V
    .locals 1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getMethod()I
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItem;->a:I

    return v0
.end method

.method public getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItem;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    return-object v0
.end method

.method protected setMethod(I)V
    .locals 0

    iput p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItem;->a:I

    return-void
.end method

.method public setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItem;->b:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunction;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTTrackingUtilsItem;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

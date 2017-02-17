.class public Lnet/veritran/android/implementation/AndroidVTDialImplementation;
.super Ljava/lang/Object;
.source "AndroidVTDialImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/states/VTApiStateInterface;


# static fields
.field public static final STATUS_DIALING_ERROR:Ljava/lang/String; = "002"

.field public static final STATUS_GENERIC_ERROR:Ljava/lang/String; = "001"

.field public static final STATUS_OK:Ljava/lang/String; = "000"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public process()I
    .locals 9

    .prologue
    const/16 v8, 0x70

    .line 24
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    .line 25
    .local v1, "m":Lnet/veritran/vtuserapplication/model/Model;
    const/16 v5, 0xaf

    invoke-virtual {v1, v5}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, "phoneToDial":Ljava/lang/String;
    const-string v2, "p"

    .line 27
    .local v2, "pause":Ljava/lang/String;
    const-string v3, "#p"

    .line 28
    .local v3, "pauseWildcard":Ljava/lang/String;
    invoke-static {v4, v3, v2}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->strReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 30
    :try_start_0
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/model/Model;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v5

    invoke-interface {v5, v4}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->dial(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v5

    const/16 v6, 0x70

    const-string v7, "000"

    invoke-virtual {v5, v6, v7}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    const/4 v5, 0x0

    return v5

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "ex":Ljava/lang/Exception;
    const-string v5, "002"

    invoke-virtual {v1, v8, v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0
.end method

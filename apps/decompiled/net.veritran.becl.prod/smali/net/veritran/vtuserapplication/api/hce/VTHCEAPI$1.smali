.class final Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$1;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/api/hce/VTHCEDeviceFunctionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deviceFunctionFinish(I)V
    .locals 3

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x70

    invoke-static {p1}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$1$1;

    invoke-direct {v1, p0}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$1$1;-><init>(Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI$1;)V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

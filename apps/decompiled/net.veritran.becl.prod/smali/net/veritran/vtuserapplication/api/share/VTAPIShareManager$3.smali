.class final Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/api/CallapiListenerResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Lnet/veritran/vtuserapplication/model/Model;


# direct methods
.method constructor <init>(Lnet/veritran/vtuserapplication/model/Model;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager$3;->a:Lnet/veritran/vtuserapplication/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyResult(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager$3;->a:Lnet/veritran/vtuserapplication/model/Model;

    const/16 v2, 0x70

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager$3$1;

    invoke-direct {v1, p0}, Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager$3$1;-><init>(Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager$3;)V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

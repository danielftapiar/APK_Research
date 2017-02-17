.class public Lnet/veritran/vtuserapplication/api/photo/PhotoListenerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/api/photo/PhotoListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 4

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x70

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/photo/PhotoListenerImpl$1;

    invoke-direct {v1, p0}, Lnet/veritran/vtuserapplication/api/photo/PhotoListenerImpl$1;-><init>(Lnet/veritran/vtuserapplication/api/photo/PhotoListenerImpl;)V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public notifyError(I)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/veritran/vtuserapplication/api/photo/PhotoListenerImpl;->a(I)V

    return-void
.end method

.method public notifySuccess()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/veritran/vtuserapplication/api/photo/PhotoListenerImpl;->a(I)V

    return-void
.end method

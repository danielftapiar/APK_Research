.class public Lnet/veritran/vtuserapplication/api/ui/SessionImageImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/api/ui/SessionImageHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addImage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->putSessionImage(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public cleanAll()V
    .locals 0

    return-void
.end method

.method public getImage(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0, p1, v1, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getBitmapForSize(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

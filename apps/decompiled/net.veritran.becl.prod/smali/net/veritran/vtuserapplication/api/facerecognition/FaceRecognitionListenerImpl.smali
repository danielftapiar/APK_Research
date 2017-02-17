.class public Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionListenerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x70

    const/4 v2, 0x3

    invoke-static {p1, v2}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionListenerImpl$1;

    invoke-direct {v1, p0}, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionListenerImpl$1;-><init>(Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionListenerImpl;)V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public notifyError(I)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionListenerImpl;->a(Ljava/lang/String;)V

    return-void
.end method

.method public notifySuccess()V
    .locals 1

    const-string v0, "000"

    invoke-direct {p0, v0}, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionListenerImpl;->a(Ljava/lang/String;)V

    return-void
.end method

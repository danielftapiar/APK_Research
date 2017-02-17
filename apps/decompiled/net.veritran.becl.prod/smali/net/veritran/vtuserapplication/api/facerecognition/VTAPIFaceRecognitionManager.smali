.class public Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;->a:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getFaceRecognitionLibraryImplementation()Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;

    move-result-object v0

    sput-object v0, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;->a:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/model/InvalidSetupException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;->a:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;->removeAllListener()V

    new-instance v0, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionListenerImpl;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionListenerImpl;-><init>()V

    sget-object v1, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;->a:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;->addListener(Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionListener;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;->a:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "0"

    invoke-static {}, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;->a()V

    sget-object v1, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;->a:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;

    if-eqz v1, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;->a:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;->getVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static process()V
    .locals 5

    const/16 v4, 0x70

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    invoke-static {}, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;->a()V

    const/16 v0, 0x6f

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x6e

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/16 v2, 0x100

    sget-object v0, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;->a:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;->getStatus()Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

    move-result-object v0

    sget-object v3, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;->STATUS_USERS_ENROLLED:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

    if-ne v0, v3, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const-string v0, "000"

    invoke-virtual {v1, v4, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager$1;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager$1;-><init>()V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    sget-object v0, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;->a:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;->enroll()V

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    sget-object v0, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;->a:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;->disenroll()V

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    sget-object v0, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;->a:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;->authenticate()V

    goto :goto_1

    :cond_4
    const-string v0, "002"

    invoke-virtual {v1, v4, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager$2;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager$2;-><init>()V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

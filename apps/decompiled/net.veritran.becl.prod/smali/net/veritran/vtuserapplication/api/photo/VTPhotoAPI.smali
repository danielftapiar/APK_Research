.class public Lnet/veritran/vtuserapplication/api/photo/VTPhotoAPI;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "VTPhotoAPI"

.field private static a:Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getPhotoImplementation()Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;

    move-result-object v0

    sput-object v0, Lnet/veritran/vtuserapplication/api/photo/VTPhotoAPI;->a:Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process()V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x70

    const/4 v4, 0x3

    const-string v0, "VTPhotoAPI"

    const-string v1, "process"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    sget-object v0, Lnet/veritran/vtuserapplication/api/photo/VTPhotoAPI;->a:Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;

    if-nez v0, :cond_0

    const-string v0, "VTPhotoAPI"

    const-string v2, "Fingerprint callapi not implemented!"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x6f

    :try_start_0
    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x6e

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "VTPhotoAPI"

    const-string v2, "getStatus"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x101

    sget-object v0, Lnet/veritran/vtuserapplication/api/photo/VTPhotoAPI;->a:Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;->hasCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v2, 0x102

    sget-object v0, Lnet/veritran/vtuserapplication/api/photo/VTPhotoAPI;->a:Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;->hasCameraPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x70

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v2, Lnet/veritran/vtuserapplication/api/photo/VTPhotoAPI$1;

    invoke-direct {v2}, Lnet/veritran/vtuserapplication/api/photo/VTPhotoAPI$1;-><init>()V

    invoke-interface {v0, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VTPhotoAPI"

    const-string v2, "throw runtimeException"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    const-string v0, "0"

    goto :goto_1

    :cond_2
    const-string v0, "0"

    goto :goto_2

    :pswitch_1
    const-string v0, "VTPhotoAPI"

    const-string v2, "Take picture"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x17c

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/api/photo/VTPhotoAPI;->a:Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;

    new-instance v3, Lnet/veritran/vtuserapplication/api/photo/PhotoListenerImpl;

    invoke-direct {v3}, Lnet/veritran/vtuserapplication/api/photo/PhotoListenerImpl;-><init>()V

    invoke-interface {v2, v0, v3}, Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;->takePicture(Ljava/lang/String;Lnet/veritran/vtuserapplication/api/photo/PhotoListener;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    :try_start_2
    const-string v0, "VTPhotoAPI"

    const-string v2, "Get picture from gallery"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x17c

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/api/photo/VTPhotoAPI;->a:Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;

    new-instance v3, Lnet/veritran/vtuserapplication/api/photo/PhotoListenerImpl;

    invoke-direct {v3}, Lnet/veritran/vtuserapplication/api/photo/PhotoListenerImpl;-><init>()V

    invoke-interface {v2, v0, v3}, Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;->getPictureFromGallery(Ljava/lang/String;Lnet/veritran/vtuserapplication/api/photo/PhotoListener;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

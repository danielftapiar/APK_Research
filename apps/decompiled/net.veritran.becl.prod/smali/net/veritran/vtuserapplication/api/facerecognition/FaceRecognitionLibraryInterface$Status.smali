.class public final enum Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum STATUS_NO_USERS_ENROLLED:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

.field public static final enum STATUS_USERS_ENROLLED:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

.field private static final synthetic a:[Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

    const-string v1, "STATUS_NO_USERS_ENROLLED"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;->STATUS_NO_USERS_ENROLLED:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

    new-instance v0, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

    const-string v1, "STATUS_USERS_ENROLLED"

    invoke-direct {v0, v1, v3}, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;->STATUS_USERS_ENROLLED:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

    sget-object v1, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;->STATUS_NO_USERS_ENROLLED:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

    aput-object v1, v0, v2

    sget-object v1, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;->STATUS_USERS_ENROLLED:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

    aput-object v1, v0, v3

    sput-object v0, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;->a:[Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;
    .locals 1

    const-class v0, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

    return-object v0
.end method

.method public static values()[Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;->a:[Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

    invoke-virtual {v0}, [Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface$Status;

    return-object v0
.end method

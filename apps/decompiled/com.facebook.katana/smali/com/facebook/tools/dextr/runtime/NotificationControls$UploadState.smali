.class final enum Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;
.super Ljava/lang/Enum;
.source "NotificationControls.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

.field public static final enum Failed:Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

.field public static final enum Successful:Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

.field public static final enum Uploading:Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    const-string v1, "Uploading"

    invoke-direct {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;->Uploading:Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    new-instance v0, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    const-string v1, "Successful"

    invoke-direct {v0, v1, v3}, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;->Successful:Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    new-instance v0, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    const-string v1, "Failed"

    invoke-direct {v0, v1, v4}, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;->Failed:Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    sget-object v1, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;->Uploading:Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;->Successful:Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;->Failed:Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;->$VALUES:[Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    return-object v0
.end method

.method public static values()[Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;->$VALUES:[Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    invoke-virtual {v0}, [Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;

    return-object v0
.end method

.class final enum Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;
.super Ljava/lang/Enum;
.source "ImageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/utils/ImageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DeviceHardwareCapability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

.field public static final enum HIGH:Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

.field public static final enum LOW:Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

.field public static final enum MEDIUM:Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    new-instance v0, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v2}, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;->HIGH:Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    new-instance v0, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;->MEDIUM:Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    new-instance v0, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v4}, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;->LOW:Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    .line 145
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    sget-object v1, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;->HIGH:Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    aput-object v1, v0, v2

    sget-object v1, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;->MEDIUM:Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    aput-object v1, v0, v3

    sget-object v1, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;->LOW:Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    aput-object v1, v0, v4

    sput-object v0, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;->$VALUES:[Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

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
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    const-class v0, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    return-object v0
.end method

.method public static values()[Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;->$VALUES:[Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    invoke-virtual {v0}, [Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    return-object v0
.end method

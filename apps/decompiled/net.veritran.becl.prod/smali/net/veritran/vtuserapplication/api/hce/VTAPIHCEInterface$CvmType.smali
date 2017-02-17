.class public final enum Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CvmType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONSUMER_DEVICE:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

.field public static final enum NO_CVM:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

.field public static final enum ONLINE_PIN:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

.field public static final enum SIGNATURE:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

.field private static final synthetic a:[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    const-string v1, "SIGNATURE"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;->SIGNATURE:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    new-instance v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    const-string v1, "ONLINE_PIN"

    invoke-direct {v0, v1, v3}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;->ONLINE_PIN:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    new-instance v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    const-string v1, "CONSUMER_DEVICE"

    invoke-direct {v0, v1, v4}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;->CONSUMER_DEVICE:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    new-instance v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    const-string v1, "NO_CVM"

    invoke-direct {v0, v1, v5}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;->NO_CVM:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    sget-object v1, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;->SIGNATURE:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;->ONLINE_PIN:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    aput-object v1, v0, v3

    sget-object v1, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;->CONSUMER_DEVICE:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    aput-object v1, v0, v4

    sget-object v1, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;->NO_CVM:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    aput-object v1, v0, v5

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;->a:[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

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

.method public static valueOf(Ljava/lang/String;)Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;
    .locals 1

    const-class v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    return-object v0
.end method

.method public static values()[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;->a:[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    invoke-virtual {v0}, [Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$CvmType;

    return-object v0
.end method

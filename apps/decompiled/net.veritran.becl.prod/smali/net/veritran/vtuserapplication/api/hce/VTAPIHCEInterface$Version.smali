.class public final enum Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum VERSION_MASTERCARD_MAGSTRIPE_1_3:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

.field public static final enum VERSION_MASTERCARD_MCHIP_1_3:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

.field public static final enum VERSION_VISA_MSD_CVN17:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

.field public static final enum VERSION_VISA_MSD_LEGACY:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

.field public static final enum VERSION_VISA_QVSDC_CVN10:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

.field public static final enum VERSION_VISA_QVSDC_CVN17:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

.field private static final synthetic a:[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    const-string v1, "VERSION_MASTERCARD_MAGSTRIPE_1_3"

    invoke-direct {v0, v1, v3}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;->VERSION_MASTERCARD_MAGSTRIPE_1_3:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    new-instance v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    const-string v1, "VERSION_MASTERCARD_MCHIP_1_3"

    invoke-direct {v0, v1, v4}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;->VERSION_MASTERCARD_MCHIP_1_3:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    new-instance v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    const-string v1, "VERSION_VISA_QVSDC_CVN10"

    invoke-direct {v0, v1, v5}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;->VERSION_VISA_QVSDC_CVN10:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    new-instance v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    const-string v1, "VERSION_VISA_QVSDC_CVN17"

    invoke-direct {v0, v1, v6}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;->VERSION_VISA_QVSDC_CVN17:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    new-instance v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    const-string v1, "VERSION_VISA_MSD_LEGACY"

    invoke-direct {v0, v1, v7}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;->VERSION_VISA_MSD_LEGACY:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    new-instance v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    const-string v1, "VERSION_VISA_MSD_CVN17"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;->VERSION_VISA_MSD_CVN17:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    const/4 v0, 0x6

    new-array v0, v0, [Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    sget-object v1, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;->VERSION_MASTERCARD_MAGSTRIPE_1_3:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    aput-object v1, v0, v3

    sget-object v1, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;->VERSION_MASTERCARD_MCHIP_1_3:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    aput-object v1, v0, v4

    sget-object v1, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;->VERSION_VISA_QVSDC_CVN10:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    aput-object v1, v0, v5

    sget-object v1, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;->VERSION_VISA_QVSDC_CVN17:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    aput-object v1, v0, v6

    sget-object v1, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;->VERSION_VISA_MSD_LEGACY:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;->VERSION_VISA_MSD_CVN17:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    aput-object v2, v0, v1

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;->a:[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

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

.method public static valueOf(Ljava/lang/String;)Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;
    .locals 1

    const-class v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    return-object v0
.end method

.method public static values()[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;->a:[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    invoke-virtual {v0}, [Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$Version;

    return-object v0
.end method

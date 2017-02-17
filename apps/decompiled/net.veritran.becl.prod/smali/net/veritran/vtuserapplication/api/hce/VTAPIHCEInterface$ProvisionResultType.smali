.class public final enum Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProvisionResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PROVISION_FAILED:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;

.field public static final enum PROVISION_OK:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;

.field private static final synthetic a:[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;

    const-string v1, "PROVISION_OK"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;->PROVISION_OK:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;

    new-instance v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;

    const-string v1, "PROVISION_FAILED"

    invoke-direct {v0, v1, v3}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;->PROVISION_FAILED:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;

    sget-object v1, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;->PROVISION_OK:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;->PROVISION_FAILED:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;

    aput-object v1, v0, v3

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;->a:[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;

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

.method public static valueOf(Ljava/lang/String;)Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;
    .locals 1

    const-class v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;

    return-object v0
.end method

.method public static values()[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;->a:[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;

    invoke-virtual {v0}, [Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$ProvisionResultType;

    return-object v0
.end method

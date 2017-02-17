.class public final enum Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FunctionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SET_DEFAULT_HCE_PAYMENT_APP:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

.field public static final enum TURN_NFC_ON:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

.field private static final synthetic a:[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

    const-string v1, "TURN_NFC_ON"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;->TURN_NFC_ON:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

    new-instance v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

    const-string v1, "SET_DEFAULT_HCE_PAYMENT_APP"

    invoke-direct {v0, v1, v3}, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;->SET_DEFAULT_HCE_PAYMENT_APP:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

    sget-object v1, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;->TURN_NFC_ON:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;->SET_DEFAULT_HCE_PAYMENT_APP:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

    aput-object v1, v0, v3

    sput-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;->a:[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

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

.method public static valueOf(Ljava/lang/String;)Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;
    .locals 1

    const-class v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

    return-object v0
.end method

.method public static values()[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;->a:[Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

    invoke-virtual {v0}, [Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface$FunctionType;

    return-object v0
.end method

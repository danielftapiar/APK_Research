.class public final enum Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/vtuserapplication/model/PermissionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionResults"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PERMISSION_DENIED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

.field public static final enum PERMISSION_GRANTED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

.field private static final synthetic a:[Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    const-string v1, "PERMISSION_GRANTED"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_GRANTED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    new-instance v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    const-string v1, "PERMISSION_DENIED"

    invoke-direct {v0, v1, v3}, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_DENIED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    sget-object v1, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_GRANTED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    aput-object v1, v0, v2

    sget-object v1, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_DENIED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    aput-object v1, v0, v3

    sput-object v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->a:[Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

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

.method public static valueOf(Ljava/lang/String;)Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;
    .locals 1

    const-class v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    return-object v0
.end method

.method public static values()[Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->a:[Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    invoke-virtual {v0}, [Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    return-object v0
.end method

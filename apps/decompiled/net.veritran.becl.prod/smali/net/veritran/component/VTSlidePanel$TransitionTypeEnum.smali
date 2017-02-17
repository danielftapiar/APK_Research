.class final enum Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;
.super Ljava/lang/Enum;
.source "VTSlidePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/VTSlidePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TransitionTypeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

.field public static final enum DECREASE:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

.field public static final enum INCREASE:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

.field public static final enum LINEAR:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

.field public static final enum TRANSPARENCY:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    const-string v1, "LINEAR"

    invoke-direct {v0, v1, v2}, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->LINEAR:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    new-instance v0, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    const-string v1, "INCREASE"

    invoke-direct {v0, v1, v3}, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->INCREASE:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    new-instance v0, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    const-string v1, "DECREASE"

    invoke-direct {v0, v1, v4}, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->DECREASE:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    new-instance v0, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    const-string v1, "TRANSPARENCY"

    invoke-direct {v0, v1, v5}, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->TRANSPARENCY:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    sget-object v1, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->LINEAR:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->INCREASE:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->DECREASE:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->TRANSPARENCY:Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    aput-object v1, v0, v5

    sput-object v0, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->$VALUES:[Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    return-object v0
.end method

.method public static values()[Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->$VALUES:[Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    invoke-virtual {v0}, [Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/veritran/component/VTSlidePanel$TransitionTypeEnum;

    return-object v0
.end method

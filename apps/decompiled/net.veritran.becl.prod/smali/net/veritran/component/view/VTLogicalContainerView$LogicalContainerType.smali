.class public final enum Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;
.super Ljava/lang/Enum;
.source "VTLogicalContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/view/VTLogicalContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogicalContainerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

.field public static final enum TwoPanelsSwipe:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

.field public static final enum Undefined:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    const-string v1, "Undefined"

    invoke-direct {v0, v1, v2}, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;->Undefined:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    .line 30
    new-instance v0, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    const-string v1, "TwoPanelsSwipe"

    invoke-direct {v0, v1, v3}, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;->TwoPanelsSwipe:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    sget-object v1, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;->Undefined:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;->TwoPanelsSwipe:Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    aput-object v1, v0, v3

    sput-object v0, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;->$VALUES:[Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    return-object v0
.end method

.method public static values()[Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;->$VALUES:[Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    invoke-virtual {v0}, [Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/veritran/component/view/VTLogicalContainerView$LogicalContainerType;

    return-object v0
.end method

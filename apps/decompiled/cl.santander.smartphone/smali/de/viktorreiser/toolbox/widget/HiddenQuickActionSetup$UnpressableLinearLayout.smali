.class Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "HiddenQuickActionSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnpressableLinearLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;


# direct methods
.method public constructor <init>(Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 597
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup$UnpressableLinearLayout;->this$0:Lde/viktorreiser/toolbox/widget/HiddenQuickActionSetup;

    .line 598
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 599
    return-void
.end method


# virtual methods
.method public dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 604
    return-void
.end method

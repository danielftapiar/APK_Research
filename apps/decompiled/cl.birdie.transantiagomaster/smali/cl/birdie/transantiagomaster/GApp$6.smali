.class final Lcl/birdie/transantiagomaster/GApp$6;
.super Ljava/lang/Object;
.source "GApp.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/GApp;->desactivarLetrero()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/GApp;

.field private final synthetic val$oldv:Landroid/view/View;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/GApp;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/GApp$6;->this$0:Lcl/birdie/transantiagomaster/GApp;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/GApp$6;->val$oldv:Landroid/view/View;

    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 962
    return-void
.end method

.method public final onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 951
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp$6;->this$0:Lcl/birdie/transantiagomaster/GApp;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp$6;->this$0:Lcl/birdie/transantiagomaster/GApp;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp$6;->val$oldv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 958
    :goto_0
    return-void

    .line 956
    :cond_0
    const-string v0, "GApp"

    .line 957
    const-string v1, "dibujarParadero: letreroLayout NULL"

    .line 956
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 966
    return-void
.end method

.method public final onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 947
    return-void
.end method

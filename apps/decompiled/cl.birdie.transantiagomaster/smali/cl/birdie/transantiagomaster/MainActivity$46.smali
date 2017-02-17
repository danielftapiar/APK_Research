.class final Lcl/birdie/transantiagomaster/MainActivity$46;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onRefrescaProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$46;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 3651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3653
    iget-object v3, p0, Lcl/birdie/transantiagomaster/MainActivity$46;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$46;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->numTasks:I
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$14(Lcl/birdie/transantiagomaster/MainActivity;)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcl/birdie/transantiagomaster/MainActivity;->setSupportProgressBarIndeterminate(Z)V

    .line 3654
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$46;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/MainActivity$46;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->numTasks:I
    invoke-static {v3}, Lcl/birdie/transantiagomaster/MainActivity;->access$14(Lcl/birdie/transantiagomaster/MainActivity;)I

    move-result v3

    if-lez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 3655
    return-void

    :cond_0
    move v0, v2

    .line 3653
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3654
    goto :goto_1
.end method

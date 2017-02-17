.class final Lcl/birdie/transantiagomaster/GApp$15;
.super Ljava/lang/Object;
.source "GApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/GApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/GApp;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/GApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/GApp$15;->this$0:Lcl/birdie/transantiagomaster/GApp;

    .line 1304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1308
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp$15;->this$0:Lcl/birdie/transantiagomaster/GApp;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp$15;->this$0:Lcl/birdie/transantiagomaster/GApp;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .line 1310
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onSetModoNavegacion(I)V

    .line 1311
    :cond_0
    return-void
.end method

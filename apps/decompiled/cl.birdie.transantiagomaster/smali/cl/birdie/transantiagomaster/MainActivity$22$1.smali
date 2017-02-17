.class final Lcl/birdie/transantiagomaster/MainActivity$22$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity$22;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/MainActivity$22;

.field private final synthetic val$p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity$22;Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$22$1;->this$1:Lcl/birdie/transantiagomaster/MainActivity$22;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$22$1;->val$p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 2313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2317
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$22$1;->this$1:Lcl/birdie/transantiagomaster/MainActivity$22;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/MainActivity$22;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2318
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$22$1;->this$1:Lcl/birdie/transantiagomaster/MainActivity$22;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/MainActivity$22;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v0

    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$22$1;->val$p:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/GApp;->dibujarParadero(Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    .line 2319
    :cond_0
    return-void
.end method

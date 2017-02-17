.class Lcl/santander/smartphone/HomeMap$Localiza$2;
.super Ljava/lang/Object;
.source "HomeMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/HomeMap$Localiza;->incluirPois()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/HomeMap$Localiza;

.field private final synthetic val$poi:Lcl/santander/santanderCL/data/response/ItemPOI;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/HomeMap$Localiza;Lcl/santander/santanderCL/data/response/ItemPOI;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/HomeMap$Localiza$2;->this$1:Lcl/santander/smartphone/HomeMap$Localiza;

    iput-object p2, p0, Lcl/santander/smartphone/HomeMap$Localiza$2;->val$poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza$2;->this$1:Lcl/santander/smartphone/HomeMap$Localiza;

    invoke-virtual {v0}, Lcl/santander/smartphone/HomeMap$Localiza;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza$2;->this$1:Lcl/santander/smartphone/HomeMap$Localiza;

    # getter for: Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;
    invoke-static {v0}, Lcl/santander/smartphone/HomeMap$Localiza;->access$6(Lcl/santander/smartphone/HomeMap$Localiza;)Lcl/santander/smartphone/HomeMap;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/smartphone/HomeMap;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza$2;->this$1:Lcl/santander/smartphone/HomeMap$Localiza;

    iget-object v1, p0, Lcl/santander/smartphone/HomeMap$Localiza$2;->this$1:Lcl/santander/smartphone/HomeMap$Localiza;

    # getter for: Lcl/santander/smartphone/HomeMap$Localiza;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    invoke-static {v1}, Lcl/santander/smartphone/HomeMap$Localiza;->access$3(Lcl/santander/smartphone/HomeMap$Localiza;)Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/HomeMap$Localiza$2;->val$poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    # invokes: Lcl/santander/smartphone/HomeMap$Localiza;->centraMapa(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Lcl/santander/santanderCL/data/response/ItemPOI;)V
    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/HomeMap$Localiza;->access$4(Lcl/santander/smartphone/HomeMap$Localiza;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Lcl/santander/santanderCL/data/response/ItemPOI;)V

    .line 422
    :cond_0
    return-void
.end method

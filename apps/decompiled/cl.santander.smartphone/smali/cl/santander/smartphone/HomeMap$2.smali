.class Lcl/santander/smartphone/HomeMap$2;
.super Ljava/lang/Object;
.source "HomeMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/HomeMap;->tryLocate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/HomeMap;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/HomeMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/HomeMap$2;->this$0:Lcl/santander/smartphone/HomeMap;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$2;->this$0:Lcl/santander/smartphone/HomeMap;

    new-instance v1, Lcl/santander/smartphone/HomeMap$Localiza;

    iget-object v2, p0, Lcl/santander/smartphone/HomeMap$2;->this$0:Lcl/santander/smartphone/HomeMap;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcl/santander/smartphone/HomeMap$Localiza;-><init>(Lcl/santander/smartphone/HomeMap;Lcl/santander/smartphone/HomeMap$Localiza;)V

    invoke-static {v0, v1}, Lcl/santander/smartphone/HomeMap;->access$13(Lcl/santander/smartphone/HomeMap;Lcl/santander/smartphone/HomeMap$Localiza;)V

    .line 186
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$2;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->loc:Lcl/santander/smartphone/HomeMap$Localiza;
    invoke-static {v0}, Lcl/santander/smartphone/HomeMap;->access$14(Lcl/santander/smartphone/HomeMap;)Lcl/santander/smartphone/HomeMap$Localiza;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/HomeMap$Localiza;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 187
    return-void
.end method

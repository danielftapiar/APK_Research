.class final Lmin3d/core/RendererActivity$1;
.super Ljava/lang/Object;
.source "RendererActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmin3d/core/RendererActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmin3d/core/RendererActivity;


# direct methods
.method constructor <init>(Lmin3d/core/RendererActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmin3d/core/RendererActivity$1;->this$0:Lmin3d/core/RendererActivity;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lmin3d/core/RendererActivity$1;->this$0:Lmin3d/core/RendererActivity;

    invoke-static {}, Lmin3d/core/RendererActivity;->onInitScene()V

    .line 35
    return-void
.end method

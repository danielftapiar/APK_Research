.class public final Lmin3d/parser/AParser$Material;
.super Ljava/lang/Object;
.source "AParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmin3d/parser/AParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Material"
.end annotation


# instance fields
.field public diffuseColor:Lmin3d/vos/Color4;

.field public diffuseTextureMap:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lmin3d/parser/AParser;


# direct methods
.method public constructor <init>(Lmin3d/parser/AParser;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 394
    iput-object p1, p0, Lmin3d/parser/AParser$Material;->this$0:Lmin3d/parser/AParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p2, p0, Lmin3d/parser/AParser$Material;->name:Ljava/lang/String;

    .line 396
    return-void
.end method

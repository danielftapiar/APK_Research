.class Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;
.super Ljava/lang/Object;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CoderId"
.end annotation


# instance fields
.field final coder:Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;

.field final method:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;)V
    .locals 0
    .param p1, "method"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .param p2, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;->method:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 77
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;->coder:Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;

    .line 78
    return-void
.end method

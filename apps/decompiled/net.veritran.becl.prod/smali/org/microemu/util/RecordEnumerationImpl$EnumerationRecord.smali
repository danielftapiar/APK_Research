.class Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;
.super Ljava/lang/Object;
.source "RecordEnumerationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/microemu/util/RecordEnumerationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnumerationRecord"
.end annotation


# instance fields
.field recordId:I

.field private final this$0:Lorg/microemu/util/RecordEnumerationImpl;

.field value:[B


# direct methods
.method constructor <init>(Lorg/microemu/util/RecordEnumerationImpl;I[B)V
    .locals 0
    .param p2, "recordId"    # I
    .param p3, "value"    # [B

    .prologue
    .line 265
    iput-object p1, p0, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;->this$0:Lorg/microemu/util/RecordEnumerationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput p2, p0, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;->recordId:I

    .line 267
    iput-object p3, p0, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;->value:[B

    .line 268
    return-void
.end method

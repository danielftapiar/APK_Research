.class Lorg/microemu/util/RecordEnumerationImpl$2;
.super Ljava/lang/Object;
.source "RecordEnumerationImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final this$0:Lorg/microemu/util/RecordEnumerationImpl;


# direct methods
.method constructor <init>(Lorg/microemu/util/RecordEnumerationImpl;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lorg/microemu/util/RecordEnumerationImpl$2;->this$0:Lorg/microemu/util/RecordEnumerationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 215
    iget-object v2, p0, Lorg/microemu/util/RecordEnumerationImpl$2;->this$0:Lorg/microemu/util/RecordEnumerationImpl;

    invoke-static {v2}, Lorg/microemu/util/RecordEnumerationImpl;->access$000(Lorg/microemu/util/RecordEnumerationImpl;)Ljavax/microedition/rms/RecordComparator;

    move-result-object v2

    check-cast p1, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;

    .end local p1    # "lhs":Ljava/lang/Object;
    iget-object v3, p1, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;->value:[B

    check-cast p2, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;

    .end local p2    # "rhs":Ljava/lang/Object;
    iget-object v4, p2, Lorg/microemu/util/RecordEnumerationImpl$EnumerationRecord;->value:[B

    invoke-interface {v2, v3, v4}, Ljavax/microedition/rms/RecordComparator;->compare([B[B)I

    move-result v0

    .line 217
    .local v0, "compare":I
    if-nez v0, :cond_1

    .line 218
    const/4 v1, 0x0

    .line 222
    :cond_0
    :goto_0
    return v1

    .line 219
    :cond_1
    if-eq v0, v1, :cond_0

    .line 222
    const/4 v1, -0x1

    goto :goto_0
.end method

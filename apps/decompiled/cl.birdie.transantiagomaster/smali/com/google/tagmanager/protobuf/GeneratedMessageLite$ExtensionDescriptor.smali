.class final Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtensionDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/tagmanager/protobuf/FieldSet$FieldDescriptorLite",
        "<",
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final enumTypeMap:Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap",
            "<*>;"
        }
    .end annotation
.end field

.field final isRepeated:Z

.field final number:I

.field final type:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 696
    check-cast p1, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .end local p1    # "x0":Ljava/lang/Object;
    iget v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iget v1, p1, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getEnumType()Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public final getLiteJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final getLiteType()Lcom/google/tagmanager/protobuf/WireFormat$FieldType;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    return v0
.end method

.method public final internalMergeFrom(Lcom/google/tagmanager/protobuf/MessageLite$Builder;Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "to"    # Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .param p2, "from"    # Lcom/google/tagmanager/protobuf/MessageLite;

    .prologue
    .line 745
    check-cast p1, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    .end local p1    # "to":Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    check-cast p2, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;

    .end local p2    # "from":Lcom/google/tagmanager/protobuf/MessageLite;
    invoke-virtual {p1, p2}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final internalMergeFrom$18ddb507(Lcom/google/tagmanager/protobuf/MutableMessageLite;)Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1
    .param p1, "to"    # Lcom/google/tagmanager/protobuf/MutableMessageLite;

    .prologue
    .line 751
    check-cast p1, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;

    .end local p1    # "to":Lcom/google/tagmanager/protobuf/MutableMessageLite;
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->mergeFrom$615f62df()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public final isRepeated()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return v0
.end method

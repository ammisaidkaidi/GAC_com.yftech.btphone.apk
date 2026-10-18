.class public Lcom/yftech/btphone/bean/ContactBean;
.super Ljava/lang/Object;
.source "ContactBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private letter:Ljava/lang/String;

.field private letterIndex:I

.field private mPhoto:[B

.field private mSerialId:Ljava/lang/String;

.field private mobile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pinyinName:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Lcom/yftech/btphone/bean/ContactBean$1;

    invoke-direct {v0}, Lcom/yftech/btphone/bean/ContactBean$1;-><init>()V

    sput-object v0, Lcom/yftech/btphone/bean/ContactBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/bean/ContactBean;->userName:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/bean/ContactBean;->mobile:Ljava/util/List;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/bean/ContactBean;->mSerialId:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/bean/ContactBean;->letter:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/btphone/bean/ContactBean;->letterIndex:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/btphone/bean/ContactBean;->pinyinName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    check-cast p1, Lcom/yftech/btphone/bean/ContactBean;

    .line 117
    iget v2, p0, Lcom/yftech/btphone/bean/ContactBean;->letterIndex:I

    iget v3, p1, Lcom/yftech/btphone/bean/ContactBean;->letterIndex:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/yftech/btphone/bean/ContactBean;->userName:Ljava/lang/String;

    iget-object v3, p1, Lcom/yftech/btphone/bean/ContactBean;->userName:Ljava/lang/String;

    .line 118
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yftech/btphone/bean/ContactBean;->mobile:Ljava/util/List;

    iget-object v3, p1, Lcom/yftech/btphone/bean/ContactBean;->mobile:Ljava/util/List;

    .line 119
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yftech/btphone/bean/ContactBean;->mSerialId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yftech/btphone/bean/ContactBean;->mSerialId:Ljava/lang/String;

    .line 120
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yftech/btphone/bean/ContactBean;->letter:Ljava/lang/String;

    iget-object v3, p1, Lcom/yftech/btphone/bean/ContactBean;->letter:Ljava/lang/String;

    .line 121
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yftech/btphone/bean/ContactBean;->pinyinName:Ljava/lang/String;

    iget-object p1, p1, Lcom/yftech/btphone/bean/ContactBean;->pinyinName:Ljava/lang/String;

    .line 122
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getLetter()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/yftech/btphone/bean/ContactBean;->letter:Ljava/lang/String;

    invoke-static {v0}, Lcom/yftech/btphone/utils/CommonUtils;->isLetterOrChinese(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/btphone/bean/ContactBean;->letter:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "#"

    :goto_0
    return-object v0
.end method

.method public getLetterIndex()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/yftech/btphone/bean/ContactBean;->letterIndex:I

    return v0
.end method

.method public getMobile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/yftech/btphone/bean/ContactBean;->mobile:Ljava/util/List;

    return-object v0
.end method

.method public getPhoto()[B
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/yftech/btphone/bean/ContactBean;->mPhoto:[B

    return-object v0
.end method

.method public getPinyinName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/yftech/btphone/bean/ContactBean;->pinyinName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/yftech/btphone/bean/ContactBean;->userName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getmSerialId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/yftech/btphone/bean/ContactBean;->mSerialId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/yftech/btphone/bean/ContactBean;->userName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yftech/btphone/bean/ContactBean;->mobile:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yftech/btphone/bean/ContactBean;->mSerialId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yftech/btphone/bean/ContactBean;->letter:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/yftech/btphone/bean/ContactBean;->letterIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/yftech/btphone/bean/ContactBean;->pinyinName:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/bean/ContactBean;->userName:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/bean/ContactBean;->mobile:Ljava/util/List;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/bean/ContactBean;->mSerialId:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/bean/ContactBean;->letter:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/btphone/bean/ContactBean;->letterIndex:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/btphone/bean/ContactBean;->pinyinName:Ljava/lang/String;

    return-void
.end method

.method public setLetter(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/yftech/btphone/bean/ContactBean;->letter:Ljava/lang/String;

    return-void
.end method

.method public setLetterIndex(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/yftech/btphone/bean/ContactBean;->letterIndex:I

    return-void
.end method

.method public setMobile(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/yftech/btphone/bean/ContactBean;->mobile:Ljava/util/List;

    return-void
.end method

.method public setPhoto([B)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/yftech/btphone/bean/ContactBean;->mPhoto:[B

    return-void
.end method

.method public setPinyinName(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/yftech/btphone/bean/ContactBean;->pinyinName:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/yftech/btphone/bean/ContactBean;->userName:Ljava/lang/String;

    return-void
.end method

.method public setmSerialId(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/yftech/btphone/bean/ContactBean;->mSerialId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContactBean{userName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/btphone/bean/ContactBean;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mobile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/btphone/bean/ContactBean;->mobile:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSerialId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/btphone/bean/ContactBean;->mSerialId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", letter=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/btphone/bean/ContactBean;->letter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", letterIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/btphone/bean/ContactBean;->letterIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pinyinName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/btphone/bean/ContactBean;->pinyinName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 137
    iget-object p2, p0, Lcom/yftech/btphone/bean/ContactBean;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object p2, p0, Lcom/yftech/btphone/bean/ContactBean;->mobile:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 139
    iget-object p2, p0, Lcom/yftech/btphone/bean/ContactBean;->mSerialId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lcom/yftech/btphone/bean/ContactBean;->letter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget p2, p0, Lcom/yftech/btphone/bean/ContactBean;->letterIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object p2, p0, Lcom/yftech/btphone/bean/ContactBean;->pinyinName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/yftech/btphone/bean/ContactBean;->mPhoto:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

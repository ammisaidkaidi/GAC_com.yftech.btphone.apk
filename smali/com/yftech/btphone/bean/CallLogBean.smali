.class public Lcom/yftech/btphone/bean/CallLogBean;
.super Ljava/lang/Object;
.source "CallLogBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yftech/btphone/bean/CallLogBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callTimes:I

.field private displayName:Ljava/lang/String;

.field private letter:Ljava/lang/String;

.field private mCallType:I

.field private mDuration:J

.field private mPhoto:[B

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Lcom/yftech/btphone/bean/CallLogBean$1;

    invoke-direct {v0}, Lcom/yftech/btphone/bean/CallLogBean$1;-><init>()V

    sput-object v0, Lcom/yftech/btphone/bean/CallLogBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->name:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->number:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->time:J

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->callTimes:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->mCallType:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->mDuration:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallTimes()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->callTimes:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->mCallType:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->mDuration:J

    return-wide v0
.end method

.method public getLetter()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->letter:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()[B
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->mPhoto:[B

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->time:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->name:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->number:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->time:J

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->callTimes:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->mCallType:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->mDuration:J

    return-void
.end method

.method public setCallTimes(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/yftech/btphone/bean/CallLogBean;->callTimes:I

    return-void
.end method

.method public setCallType(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/yftech/btphone/bean/CallLogBean;->mCallType:I

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/yftech/btphone/bean/CallLogBean;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/yftech/btphone/bean/CallLogBean;->mDuration:J

    return-void
.end method

.method public setLetter(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/yftech/btphone/bean/CallLogBean;->letter:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/yftech/btphone/bean/CallLogBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/yftech/btphone/bean/CallLogBean;->number:Ljava/lang/String;

    return-void
.end method

.method public setPhoto([B)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/yftech/btphone/bean/CallLogBean;->mPhoto:[B

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/yftech/btphone/bean/CallLogBean;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallLogBean{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/btphone/bean/CallLogBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/btphone/bean/CallLogBean;->number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yftech/btphone/bean/CallLogBean;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", callTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/btphone/bean/CallLogBean;->callTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/btphone/bean/CallLogBean;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yftech/btphone/bean/CallLogBean;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 134
    iget-object p2, p0, Lcom/yftech/btphone/bean/CallLogBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object p2, p0, Lcom/yftech/btphone/bean/CallLogBean;->number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-wide v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    iget p2, p0, Lcom/yftech/btphone/bean/CallLogBean;->callTimes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget p2, p0, Lcom/yftech/btphone/bean/CallLogBean;->mCallType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-wide v0, p0, Lcom/yftech/btphone/bean/CallLogBean;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

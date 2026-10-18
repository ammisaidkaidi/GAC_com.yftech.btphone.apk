.class public Lcom/yftech/btphone/bean/SearchListBean;
.super Ljava/lang/Object;
.source "SearchListBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yftech/btphone/bean/SearchListBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contactBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;"
        }
    .end annotation
.end field

.field private topContactBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/yftech/btphone/bean/SearchListBean$1;

    invoke-direct {v0}, Lcom/yftech/btphone/bean/SearchListBean$1;-><init>()V

    sput-object v0, Lcom/yftech/btphone/bean/SearchListBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/yftech/btphone/bean/ContactBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/bean/SearchListBean;->contactBeanList:Ljava/util/List;

    .line 56
    sget-object v0, Lcom/yftech/btphone/bean/ContactBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/btphone/bean/SearchListBean;->topContactBeanList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yftech/btphone/bean/SearchListBean;->contactBeanList:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcom/yftech/btphone/bean/SearchListBean;->topContactBeanList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContactBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/yftech/btphone/bean/SearchListBean;->contactBeanList:Ljava/util/List;

    return-object v0
.end method

.method public getTopContactBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/yftech/btphone/bean/SearchListBean;->topContactBeanList:Ljava/util/List;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 50
    sget-object v0, Lcom/yftech/btphone/bean/ContactBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/btphone/bean/SearchListBean;->contactBeanList:Ljava/util/List;

    .line 51
    sget-object v0, Lcom/yftech/btphone/bean/ContactBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/btphone/bean/SearchListBean;->topContactBeanList:Ljava/util/List;

    return-void
.end method

.method public setContactBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/yftech/btphone/bean/SearchListBean;->contactBeanList:Ljava/util/List;

    return-void
.end method

.method public setTopContactBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/btphone/bean/ContactBean;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/yftech/btphone/bean/SearchListBean;->topContactBeanList:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 45
    iget-object p2, p0, Lcom/yftech/btphone/bean/SearchListBean;->contactBeanList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 46
    iget-object p2, p0, Lcom/yftech/btphone/bean/SearchListBean;->topContactBeanList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method

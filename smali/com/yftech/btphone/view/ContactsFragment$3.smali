.class Lcom/yftech/btphone/view/ContactsFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/btphone/view/ContactsFragment;->initScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/btphone/view/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/yftech/btphone/view/ContactsFragment;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment$3;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 196
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-eqz p2, :cond_1

    .line 199
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment$3;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-static {p1}, Lcom/yftech/btphone/view/ContactsFragment;->access$500(Lcom/yftech/btphone/view/ContactsFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-lez p1, :cond_0

    .line 201
    iget-object p2, p0, Lcom/yftech/btphone/view/ContactsFragment$3;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-static {p2}, Lcom/yftech/btphone/view/ContactsFragment;->access$600(Lcom/yftech/btphone/view/ContactsFragment;)Lcom/yftech/btphone/adapter/ContactAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/btphone/adapter/ContactAdapter;->getData()Ljava/util/List;

    move-result-object p2

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/btphone/bean/ContactBean;

    invoke-virtual {p2}, Lcom/yftech/btphone/bean/ContactBean;->getLetterIndex()I

    .line 202
    iget-object p2, p0, Lcom/yftech/btphone/view/ContactsFragment$3;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    iget-object p2, p2, Lcom/yftech/btphone/view/ContactsFragment;->sideBar:Lcom/yftech/btphone/view/SideIndexBar;

    iget-object p3, p0, Lcom/yftech/btphone/view/ContactsFragment$3;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    invoke-static {p3}, Lcom/yftech/btphone/view/ContactsFragment;->access$600(Lcom/yftech/btphone/view/ContactsFragment;)Lcom/yftech/btphone/adapter/ContactAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yftech/btphone/adapter/ContactAdapter;->getData()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/btphone/bean/ContactBean;

    invoke-virtual {p1}, Lcom/yftech/btphone/bean/ContactBean;->getLetter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/yftech/btphone/view/SideIndexBar;->getIndex(Ljava/lang/String;)I

    move-result p1

    .line 203
    iget-object p2, p0, Lcom/yftech/btphone/view/ContactsFragment$3;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    iget-object p2, p2, Lcom/yftech/btphone/view/ContactsFragment;->sideBar:Lcom/yftech/btphone/view/SideIndexBar;

    invoke-virtual {p2}, Lcom/yftech/btphone/view/SideIndexBar;->getCurrentIndex()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 205
    iget-object p2, p0, Lcom/yftech/btphone/view/ContactsFragment$3;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    iget-object p2, p2, Lcom/yftech/btphone/view/ContactsFragment;->sideBar:Lcom/yftech/btphone/view/SideIndexBar;

    invoke-virtual {p2, p1}, Lcom/yftech/btphone/view/SideIndexBar;->setCurrentIndex(I)V

    .line 206
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment$3;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    iget-object p1, p1, Lcom/yftech/btphone/view/ContactsFragment;->tvPopular:Lcom/yftech/btphone/view/FontTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/view/FontTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment$3;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    iget-object p1, p1, Lcom/yftech/btphone/view/ContactsFragment;->sideBar:Lcom/yftech/btphone/view/SideIndexBar;

    invoke-virtual {p1}, Lcom/yftech/btphone/view/SideIndexBar;->getCurrentIndex()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 211
    iget-object p1, p0, Lcom/yftech/btphone/view/ContactsFragment$3;->this$0:Lcom/yftech/btphone/view/ContactsFragment;

    iget-object p1, p1, Lcom/yftech/btphone/view/ContactsFragment;->sideBar:Lcom/yftech/btphone/view/SideIndexBar;

    invoke-virtual {p1, p2}, Lcom/yftech/btphone/view/SideIndexBar;->setCurrentIndex(I)V

    :cond_1
    :goto_0
    return-void
.end method

.class public Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$c;,
        Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;,
        Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$d;
    }
.end annotation


# instance fields
.field private U:I

.field private V:I

.field private W:Landroidx/recyclerview/widget/RecyclerView;

.field private X:Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;

.field private Y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Z:I

.field private a0:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic l1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->W:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic m1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->X:Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;

    return-object p0
.end method

.method static synthetic n1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->Y:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic o1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->Z:I

    return p0
.end method

.method static synthetic p1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->a0:Z

    return p0
.end method


# virtual methods
.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "isPng"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->a0:Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "Key.Image.Preview.Path"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 4
    :goto_0
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->Y:Ljava/util/ArrayList;

    const-wide/16 v1, 0x12c

    if-eqz p2, :cond_6

    .line 5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_4

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->Y:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v3, 0x1

    if-le p2, v3, :cond_3

    const/16 p2, 0x780

    goto :goto_1

    :cond_3
    const/16 p2, 0xbb8

    :goto_1
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->Z:I

    const p2, 0x7f0801f4

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->W:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f080236

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->X:Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;

    .line 9
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {p2, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 10
    new-instance v5, Landroidx/recyclerview/widget/x;

    invoke-direct {v5}, Landroidx/recyclerview/widget/x;-><init>()V

    .line 11
    iget-object v6, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->W:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/b0;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 12
    iget-object v6, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->W:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 13
    iget-object v6, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->W:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;

    invoke-direct {v7, p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$a;)V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 14
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 15
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->X:Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->X:Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->Y:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->b(I)V

    .line 17
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->W:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$a;

    invoke-direct {v3, p0, v5, p2}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;Landroidx/recyclerview/widget/x;Landroidx/recyclerview/widget/RecyclerView$o;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    goto :goto_2

    .line 18
    :cond_4
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->X:Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lc2;->h(Landroid/content/Context;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->U:I

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lc2;->v(Landroid/content/Context;)Z

    move-result p2

    const/high16 v0, 0x41f00000    # 30.0f

    if-eqz p2, :cond_5

    .line 21
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->U:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->U:I

    goto :goto_3

    .line 22
    :cond_5
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->U:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->U:I

    .line 23
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42440000    # 49.0f

    invoke-static {p2, v0}, Lc2;->b(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->V:I

    .line 24
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->U:I

    invoke-static {p1, v0, p2, v1, v2}, Lcm;->u(Landroid/view/View;IIJ)V

    return-void

    .line 25
    :cond_6
    :goto_4
    new-instance p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/g;

    invoke-direct {p1, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/g;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;)V

    invoke-static {p1, v1, v2}, Lnm;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0054

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    const-class v1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->U:I

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->V:I

    const-wide/16 v4, 0x12c

    invoke-static/range {v0 .. v5}, Lcm;->j(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;IIJ)V

    return-void
.end method

.method public synthetic q1()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    const-class v2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->U:I

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/n;->V:I

    const-wide/16 v5, 0x12c

    invoke-static/range {v1 .. v6}, Lcm;->j(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;IIJ)V

    return-void
.end method

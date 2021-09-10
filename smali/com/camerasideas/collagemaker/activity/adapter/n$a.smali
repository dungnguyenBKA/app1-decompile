.class public Lcom/camerasideas/collagemaker/activity/adapter/n$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/adapter/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/TextView;

.field private c:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/adapter/n;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const p1, 0x7f080268

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/n$a;->c:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f08026a

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/n$a;->b:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/camerasideas/collagemaker/activity/adapter/n$a;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/adapter/n$a;->c:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/camerasideas/collagemaker/activity/adapter/n$a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/activity/adapter/n$a;->b:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public c()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/n$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/n$a;->a:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/n$a;->a:I

    return-void
.end method

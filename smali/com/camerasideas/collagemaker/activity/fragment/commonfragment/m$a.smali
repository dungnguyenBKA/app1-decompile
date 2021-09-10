.class Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;->D0(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;

    invoke-virtual {p1}, Lsm;->u1()V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;->y1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;->z1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/camerasideas/collagemaker/appdata/f;->e(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;

    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;->A1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/camerasideas/collagemaker/appdata/f;->f(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;->B1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, -0x2

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/appdata/f;->m(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;->C1(Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/camerasideas/collagemaker/appdata/f;->l(Landroid/content/Context;Z)V

    :cond_1
    :goto_0
    return-void
.end method

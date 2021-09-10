.class Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;)V
    .locals 7

    const/4 p1, -0x1

    if-eq p3, p1, :cond_6

    .line 1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Lcom/camerasideas/collagemaker/activity/adapter/u;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->p1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    invoke-static {}, Lmr;->b()Landroid/widget/Toast;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lmr;->b()Landroid/widget/Toast;

    move-result-object p1

    const/16 p2, 0x11

    const/4 p3, 0x0

    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-static {p4}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->q1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Landroid/content/Context;

    move-result-object p4

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p4, v0}, Lc2;->b(Landroid/content/Context;F)I

    move-result p4

    neg-int p4, p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/Toast;->setGravity(III)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    const p2, 0x7f0e0155

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->T(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    return-void

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-static {p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Lcom/camerasideas/collagemaker/activity/adapter/u;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/camerasideas/collagemaker/activity/adapter/u;->z(I)Lwn;

    move-result-object p2

    .line 7
    iget-object p4, p2, Lwn;->c:Liq;

    if-eqz p4, :cond_3

    .line 8
    iget v0, p4, Lfq;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->r1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string p1, "PRO_FROM"

    const-string p2, "ProFont"

    .line 10
    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->s1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    .line 12
    const-class v2, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/SubscribeProFragment;

    const v4, 0x7f080135

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    return-void

    :cond_3
    if-eqz p4, :cond_5

    .line 13
    iget v0, p4, Lfq;->b:I

    if-eq v0, p1, :cond_5

    invoke-static {p4}, Lyp;->S(Lfq;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    iget-object p2, p4, Lfq;->h:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->t1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->u1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p4, Lfq;->h:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->u1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p4, Lfq;->h:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_4
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object p1

    invoke-virtual {p1, p4}, Lyp;->z(Lfq;)V

    return-void

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->o1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Lcom/camerasideas/collagemaker/activity/adapter/u;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/camerasideas/collagemaker/activity/adapter/u;->E(I)V

    .line 19
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel$a;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;->p1(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextFontPanel;)Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;

    move-result-object p1

    iget-object p2, p2, Lwn;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->r(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

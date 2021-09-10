.class public Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;

    const v0, 0x7f080090

    const-string v1, "field \'mBtnAlignLeft\' and method \'onClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mBtnAlignLeft\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignLeft:Landroid/widget/ImageView;

    .line 5
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding$a;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080091

    const-string v1, "field \'mBtnAlignMiddle\' and method \'onClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mBtnAlignMiddle\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignMiddle:Landroid/widget/ImageView;

    .line 9
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding$b;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080092

    const-string v1, "field \'mBtnAlignRight\' and method \'onClick\'"

    .line 11
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mBtnAlignRight\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignRight:Landroid/widget/ImageView;

    .line 13
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->e:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding$c;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c5

    const-string v1, "field \'mBtnTextBold\' and method \'onClick\'"

    .line 15
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mBtnTextBold\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextBold:Landroid/widget/ImageView;

    .line 17
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->f:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding$d;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c8

    const-string v1, "field \'mBtnTextItalic\' and method \'onClick\'"

    .line 19
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 20
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mBtnTextItalic\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextItalic:Landroid/widget/ImageView;

    .line 21
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->g:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding$e;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800cb

    const-string v1, "field \'mBtnTextUnderline\' and method \'onClick\'"

    .line 23
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 24
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mBtnTextUnderline\'"

    invoke-static {v1, v0, v3, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextUnderline:Landroid/widget/ImageView;

    .line 25
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->h:Landroid/view/View;

    .line 26
    new-instance v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding$f;-><init>(Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const-class v0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const v1, 0x7f080251

    const-string v2, "field \'mSeekBarLetterSpacing\'"

    .line 28
    invoke-static {p2, v1, v2}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 29
    invoke-static {v3, v1, v2, v0}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mSeekBarLetterSpacing:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const v0, 0x7f080254

    const-string v1, "field \'mSeekBarLineSpacing\'"

    .line 31
    const-class v2, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    .line 32
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 33
    invoke-static {v3, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    iput-object v0, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mSeekBarLineSpacing:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    const v0, 0x7f08015a

    const-string v1, "field \'mImageLetterSpacing\'"

    .line 35
    const-class v2, Landroid/widget/ImageView;

    .line 36
    invoke-static {p2, v0, v1}, Lq6;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 37
    invoke-static {p2, v0, v1, v2}, Lq6;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 38
    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mImageLetterSpacing:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->b:Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;

    .line 3
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignLeft:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignMiddle:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnAlignRight:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextBold:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextItalic:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mBtnTextUnderline:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mSeekBarLetterSpacing:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    .line 10
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mSeekBarLineSpacing:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    .line 11
    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel;->mImageLetterSpacing:Landroid/widget/ImageView;

    .line 12
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->c:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->d:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->e:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->f:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->g:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/TextAlignPanel_ViewBinding;->h:Landroid/view/View;

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

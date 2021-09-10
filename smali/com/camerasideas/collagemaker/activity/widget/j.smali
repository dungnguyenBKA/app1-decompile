.class Lcom/camerasideas/collagemaker/activity/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;


# direct methods
.method constructor <init>(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->a(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->a(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;

    move-result-object p1

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->h()I

    move-result v0

    invoke-interface {p1, p2, v0, p3}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;->d(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;IZ)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->c(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->f(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->a(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->a(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;

    move-result-object p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-interface {p1, v0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;->p(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->c(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->e(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V

    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->a(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->a(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;

    move-result-object p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-interface {p1, v0}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView$a;->t(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->b(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->c(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/j;->a:Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;->d(Lcom/camerasideas/collagemaker/activity/widget/SeekBarWithTextView;)V

    :cond_1
    return-void
.end method

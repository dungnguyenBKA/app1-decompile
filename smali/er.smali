.class public final Ler;
.super Lgr;
.source "SourceFile"


# instance fields
.field private final b:Ljr;

.field private c:Landroid/view/View;

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lgr;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance v0, Ljr;

    invoke-direct {v0, p0, p1}, Ljr;-><init>(Landroid/widget/Toast;Landroid/app/Application;)V

    iput-object v0, p0, Ler;->b:Ljr;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Ler;->b:Ljr;

    invoke-virtual {v0}, Ljr;->a()V

    return-void
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Ler;->d:I

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    .line 1
    iget v0, p0, Ler;->g:F

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    .line 1
    iget v0, p0, Ler;->h:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ler;->c:Landroid/view/View;

    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .line 1
    iget v0, p0, Ler;->e:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Ler;->f:I

    return v0
.end method

.method public setGravity(III)V
    .locals 0

    .line 1
    iput p1, p0, Ler;->d:I

    .line 2
    iput p2, p0, Ler;->e:I

    .line 3
    iput p3, p0, Ler;->f:I

    return-void
.end method

.method public setMargin(FF)V
    .locals 0

    .line 1
    iput p1, p0, Ler;->g:F

    .line 2
    iput p2, p0, Ler;->h:F

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ler;->c:Landroid/view/View;

    .line 2
    invoke-static {p1}, Lgr;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgr;->c(Landroid/widget/TextView;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-object v0, p0, Ler;->b:Ljr;

    invoke-virtual {v0}, Ljr;->c()V

    return-void
.end method

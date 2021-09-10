.class final Lc3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc3;->x(Landroid/view/View;Ly2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly2;


# direct methods
.method constructor <init>(Ly2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc3$a;->a:Ly2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    new-instance v0, Ll3;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p2}, Ll3;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lc3$a;->a:Ly2;

    invoke-interface {p2, p1, v0}, Ly2;->a(Landroid/view/View;Ll3;)Ll3;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ll3;->i()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/google/android/material/internal/c;
.super Landroidx/appcompat/view/menu/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/i;

    .line 2
    new-instance p2, Lcom/google/android/material/internal/e;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->n()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0, p1}, Lcom/google/android/material/internal/e;-><init>(Landroid/content/Context;Lcom/google/android/material/internal/c;Landroidx/appcompat/view/menu/i;)V

    .line 3
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/i;->t(Landroidx/appcompat/view/menu/r;)V

    return-object p2
.end method

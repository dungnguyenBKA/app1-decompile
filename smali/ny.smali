.class public Lny;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(I)Ljy;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1
    new-instance p0, Lpy;

    invoke-direct {p0}, Lpy;-><init>()V

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lky;

    invoke-direct {p0}, Lky;-><init>()V

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Lpy;

    invoke-direct {p0}, Lpy;-><init>()V

    return-object p0
.end method

.method public static b(Landroid/view/View;Lmy;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lmy;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/material/internal/j;->c(Landroid/view/View;)F

    move-result p0

    invoke-virtual {p1, p0}, Lmy;->J(F)V

    :cond_0
    return-void
.end method

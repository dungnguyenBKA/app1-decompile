.class Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final e:Liy;


# instance fields
.field a:Liy;

.field b:Liy;

.field c:Liy;

.field d:Liy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgy;-><init>(F)V

    sput-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->e:Liy;

    return-void
.end method

.method constructor <init>(Liy;Liy;Liy;Liy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->a:Liy;

    .line 3
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->b:Liy;

    .line 4
    iput-object p4, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->c:Liy;

    .line 5
    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->d:Liy;

    return-void
.end method

.method public static a(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    sget-object v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->e:Liy;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->d:Liy;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->c:Liy;

    invoke-direct {v0, v1, v2, v1, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;-><init>(Liy;Liy;Liy;Liy;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
    .locals 2

    .line 1
    sget v0, Lc3;->g:I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->a:Liy;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->d:Liy;

    sget-object v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->e:Liy;

    invoke-direct {p1, v0, p0, v1, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;-><init>(Liy;Liy;Liy;Liy;)V

    goto :goto_1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    sget-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->e:Liy;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->b:Liy;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->c:Liy;

    invoke-direct {p1, v0, v0, v1, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;-><init>(Liy;Liy;Liy;Liy;)V

    :goto_1
    return-object p1
.end method

.method public static c(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
    .locals 2

    .line 1
    sget v0, Lc3;->g:I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    sget-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->e:Liy;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->b:Liy;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->c:Liy;

    invoke-direct {p1, v0, v0, v1, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;-><init>(Liy;Liy;Liy;Liy;)V

    goto :goto_1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->a:Liy;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->d:Liy;

    sget-object v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->e:Liy;

    invoke-direct {p1, v0, p0, v1, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;-><init>(Liy;Liy;Liy;Liy;)V

    :goto_1
    return-object p1
.end method

.method public static d(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->a:Liy;

    sget-object v2, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->e:Liy;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->b:Liy;

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;-><init>(Liy;Liy;Liy;Liy;)V

    return-object v0
.end method

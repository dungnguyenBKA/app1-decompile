.class public Ldev/drojian/rate/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/drojian/rate/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "e"
.end annotation


# instance fields
.field b:Ldd0;

.field c:Lbd0;

.field final synthetic d:Ldev/drojian/rate/a;


# direct methods
.method public constructor <init>(Ldev/drojian/rate/a;Lbd0;Ldd0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ldev/drojian/rate/a$e;->c:Lbd0;

    .line 3
    iput-object p3, p0, Ldev/drojian/rate/a$e;->b:Ldd0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    iget-object v1, p0, Ldev/drojian/rate/a$e;->c:Lbd0;

    iget-boolean v2, v1, Lbd0;->a:Z

    const v3, 0x7f080215

    const v4, 0x7f080214

    const v5, 0x7f080213

    const v6, 0x7f080212

    const v7, 0x7f080211

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_e

    iget-boolean v1, v1, Lbd0;->b:Z

    if-nez v1, :cond_e

    if-ne v0, v7, :cond_2

    .line 3
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 4
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0, v9}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 5
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v0, v0, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    .line 6
    invoke-virtual {v0, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v1, v8}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 9
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    .line 10
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 11
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    .line 12
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 13
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    .line 14
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 15
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    .line 16
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 17
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    .line 18
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    move v13, v0

    .line 19
    :goto_1
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Ldev/drojian/rate/a$e;->c:Lbd0;

    iget-object v2, p0, Ldev/drojian/rate/a$e;->b:Ldd0;

    invoke-static {v0, p1, v1, v13, v2}, Ldev/drojian/rate/a;->d(Ldev/drojian/rate/a;Landroid/content/Context;Lbd0;ZLdd0;)V

    goto/16 :goto_14

    :cond_2
    if-ne v0, v6, :cond_5

    .line 20
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 21
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0, v10}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 22
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v0, v0, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    .line 23
    invoke-virtual {v0, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    goto :goto_3

    .line 24
    :cond_3
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 25
    :goto_2
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v1, v9}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 26
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    .line 27
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 28
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    .line 29
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 30
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    .line 31
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 32
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    .line 33
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 34
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    .line 35
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    move v13, v0

    .line 36
    :goto_3
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Ldev/drojian/rate/a$e;->c:Lbd0;

    iget-object v2, p0, Ldev/drojian/rate/a$e;->b:Ldd0;

    invoke-static {v0, p1, v1, v13, v2}, Ldev/drojian/rate/a;->d(Ldev/drojian/rate/a;Landroid/content/Context;Lbd0;ZLdd0;)V

    goto/16 :goto_14

    :cond_5
    if-ne v0, v5, :cond_8

    .line 37
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-ne v0, v10, :cond_6

    .line 38
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0, v11}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 39
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v0, v0, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    .line 40
    invoke-virtual {v0, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    goto :goto_5

    .line 41
    :cond_6
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    .line 42
    :goto_4
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v1, v10}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 43
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    .line 44
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 45
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    .line 46
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 47
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    .line 48
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 49
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    .line 50
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 51
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    .line 52
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    move v13, v0

    .line 53
    :goto_5
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Ldev/drojian/rate/a$e;->c:Lbd0;

    iget-object v2, p0, Ldev/drojian/rate/a$e;->b:Ldd0;

    invoke-static {v0, p1, v1, v13, v2}, Ldev/drojian/rate/a;->d(Ldev/drojian/rate/a;Landroid/content/Context;Lbd0;ZLdd0;)V

    goto/16 :goto_14

    :cond_8
    if-ne v0, v4, :cond_b

    .line 54
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-ne v0, v11, :cond_9

    .line 55
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0, v12}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 56
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v0, v0, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    .line 57
    invoke-virtual {v0, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    goto :goto_7

    .line 58
    :cond_9
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    .line 59
    :goto_6
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v1, v11}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 60
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    .line 61
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 62
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    .line 63
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 64
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    .line 65
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 66
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    .line 67
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 68
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    .line 69
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    move v13, v0

    .line 70
    :goto_7
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Ldev/drojian/rate/a$e;->c:Lbd0;

    iget-object v2, p0, Ldev/drojian/rate/a$e;->b:Ldd0;

    invoke-static {v0, p1, v1, v13, v2}, Ldev/drojian/rate/a;->d(Ldev/drojian/rate/a;Landroid/content/Context;Lbd0;ZLdd0;)V

    goto/16 :goto_14

    :cond_b
    if-ne v0, v3, :cond_1d

    .line 71
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-ne v0, v12, :cond_c

    .line 72
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0, v13}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 73
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v0, v0, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    .line 74
    invoke-virtual {v0, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    goto :goto_9

    .line 75
    :cond_c
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    .line 76
    :goto_8
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v1, v12}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 77
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    .line 78
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 79
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    .line 80
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 81
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    .line 82
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 83
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    .line 84
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 85
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    .line 86
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    move v13, v0

    .line 87
    :goto_9
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Ldev/drojian/rate/a$e;->c:Lbd0;

    iget-object v2, p0, Ldev/drojian/rate/a$e;->b:Ldd0;

    invoke-static {v0, p1, v1, v13, v2}, Ldev/drojian/rate/a;->d(Ldev/drojian/rate/a;Landroid/content/Context;Lbd0;ZLdd0;)V

    goto/16 :goto_14

    :cond_e
    if-ne v0, v7, :cond_11

    .line 88
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-ne v0, v12, :cond_f

    .line 89
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0, v13}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 90
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v0, v0, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    .line 91
    invoke-virtual {v0, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    goto :goto_b

    .line 92
    :cond_f
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    .line 93
    :goto_a
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v1, v12}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 94
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    .line 95
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 96
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    .line 97
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 98
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    .line 99
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 100
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    .line 101
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 102
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    .line 103
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    move v13, v0

    .line 104
    :goto_b
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Ldev/drojian/rate/a$e;->c:Lbd0;

    iget-object v2, p0, Ldev/drojian/rate/a$e;->b:Ldd0;

    invoke-static {v0, p1, v1, v13, v2}, Ldev/drojian/rate/a;->d(Ldev/drojian/rate/a;Landroid/content/Context;Lbd0;ZLdd0;)V

    goto/16 :goto_14

    :cond_11
    if-ne v0, v6, :cond_14

    .line 105
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-ne v0, v11, :cond_12

    .line 106
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0, v12}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 107
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v0, v0, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    .line 108
    invoke-virtual {v0, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    goto :goto_d

    .line 109
    :cond_12
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    .line 110
    :goto_c
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v1, v11}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 111
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    .line 112
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 113
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    .line 114
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 115
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    .line 116
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 117
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    .line 118
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 119
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    .line 120
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    move v13, v0

    .line 121
    :goto_d
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Ldev/drojian/rate/a$e;->c:Lbd0;

    iget-object v2, p0, Ldev/drojian/rate/a$e;->b:Ldd0;

    invoke-static {v0, p1, v1, v13, v2}, Ldev/drojian/rate/a;->d(Ldev/drojian/rate/a;Landroid/content/Context;Lbd0;ZLdd0;)V

    goto/16 :goto_14

    :cond_14
    if-ne v0, v5, :cond_17

    .line 122
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-ne v0, v10, :cond_15

    .line 123
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0, v11}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 124
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v0, v0, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    .line 125
    invoke-virtual {v0, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    goto :goto_f

    .line 126
    :cond_15
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_e

    :cond_16
    const/4 v0, 0x0

    .line 127
    :goto_e
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v1, v10}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 128
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    .line 129
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 130
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    .line 131
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 132
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    .line 133
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 134
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    .line 135
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 136
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    .line 137
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    move v13, v0

    .line 138
    :goto_f
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Ldev/drojian/rate/a$e;->c:Lbd0;

    iget-object v2, p0, Ldev/drojian/rate/a$e;->b:Ldd0;

    invoke-static {v0, p1, v1, v13, v2}, Ldev/drojian/rate/a;->d(Ldev/drojian/rate/a;Landroid/content/Context;Lbd0;ZLdd0;)V

    goto/16 :goto_14

    :cond_17
    if-ne v0, v4, :cond_1a

    .line 139
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-ne v0, v9, :cond_18

    .line 140
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0, v10}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 141
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v0, v0, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    .line 142
    invoke-virtual {v0, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    goto :goto_11

    .line 143
    :cond_18
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_10

    :cond_19
    const/4 v0, 0x0

    .line 144
    :goto_10
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v1, v9}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 145
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    .line 146
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 147
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    .line 148
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 149
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    .line 150
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 151
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    .line 152
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 153
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    .line 154
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    move v13, v0

    .line 155
    :goto_11
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Ldev/drojian/rate/a$e;->c:Lbd0;

    iget-object v2, p0, Ldev/drojian/rate/a$e;->b:Ldd0;

    invoke-static {v0, p1, v1, v13, v2}, Ldev/drojian/rate/a;->d(Ldev/drojian/rate/a;Landroid/content/Context;Lbd0;ZLdd0;)V

    goto :goto_14

    :cond_1a
    if-ne v0, v3, :cond_1d

    .line 156
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-ne v0, v8, :cond_1b

    .line 157
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0, v9}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 158
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v0, v0, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    .line 159
    invoke-virtual {v0, v13, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    goto :goto_13

    .line 160
    :cond_1b
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v0}, Ldev/drojian/rate/a;->b(Ldev/drojian/rate/a;)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_12

    :cond_1c
    const/4 v0, 0x0

    .line 161
    :goto_12
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-static {v1, v8}, Ldev/drojian/rate/a;->c(Ldev/drojian/rate/a;I)I

    .line 162
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->a:Landroidx/appcompat/widget/StarCheckView;

    .line 163
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 164
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->b:Landroidx/appcompat/widget/StarCheckView;

    .line 165
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 166
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->c:Landroidx/appcompat/widget/StarCheckView;

    .line 167
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 168
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->d:Landroidx/appcompat/widget/StarCheckView;

    .line 169
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    .line 170
    iget-object v1, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    iget-object v1, v1, Ldev/drojian/rate/a;->e:Landroidx/appcompat/widget/StarCheckView;

    .line 171
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/StarCheckView;->g(ZZ)V

    move v13, v0

    .line 172
    :goto_13
    iget-object v0, p0, Ldev/drojian/rate/a$e;->d:Ldev/drojian/rate/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Ldev/drojian/rate/a$e;->c:Lbd0;

    iget-object v2, p0, Ldev/drojian/rate/a$e;->b:Ldd0;

    invoke-static {v0, p1, v1, v13, v2}, Ldev/drojian/rate/a;->d(Ldev/drojian/rate/a;Landroid/content/Context;Lbd0;ZLdd0;)V

    :cond_1d
    :goto_14
    return-void
.end method

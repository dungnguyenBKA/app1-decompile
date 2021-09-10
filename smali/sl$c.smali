.class public Lsl$c;
.super Lml;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lml<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic n:Lsl;


# direct methods
.method protected constructor <init>(Lsl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsl$c;->n:Lsl;

    invoke-direct {p0}, Lml;-><init>()V

    return-void
.end method


# virtual methods
.method protected f([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lsl$c;->n:Lsl;

    .line 3
    iget-object v1, p1, Lsl;->a:Lql;

    if-eqz v1, :cond_4

    .line 4
    iput-object v0, p1, Lsl;->a:Lql;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lsl$c;->n:Lsl;

    .line 6
    iget-object p1, p1, Lsl;->a:Lql;

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Lql;->f()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lsl$c;->n:Lsl;

    .line 9
    iget-object p1, p1, Lsl;->a:Lql;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Lql;->n()V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lsl$c;->n:Lsl;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :try_start_0
    iget-object p1, p1, Lsl;->a:Lql;

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1}, Lql;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-object v0
.end method

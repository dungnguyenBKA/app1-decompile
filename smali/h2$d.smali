.class Lh2$d;
.super Lh2$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final b:Z


# direct methods
.method constructor <init>(Lh2$b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lh2$c;-><init>(Lh2$b;)V

    .line 2
    iput-boolean p2, p0, Lh2$d;->b:Z

    return-void
.end method


# virtual methods
.method protected b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lh2$d;->b:Z

    return v0
.end method

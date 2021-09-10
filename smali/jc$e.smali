.class public final Ljc$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field private final a:[Ljava/io/File;


# direct methods
.method constructor <init>(Ljc;Ljava/lang/String;J[Ljava/io/File;[JLjc$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p5, p0, Ljc$e;->a:[Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Ljc$e;->a:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

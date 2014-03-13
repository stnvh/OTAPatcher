int main(int argc, char **argv, char **envp) {
	char *trim = argv[1];
	trim[strlen(trim)-6] = 0;
	printf("%s", trim);
	return 0;
}

// vim:ft=objc

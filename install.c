#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

/*
 * I haven't had a chance to check if it works perfectly yet!
 * but I will be sure to give it a shot
 * and correct any mistakes I could have made!
 * by Aryan Singh, Live long and suck it.
 * */

bool vscode(); // prototype
void fish();
void flatpak(int answer);

int main (int argc, char *argv[]) {
    int answer;
    bool vs_code_install;

    printf("Choose distribution!\n[1] Arch-Linux\n[2] Fedora\n>>> ");
    scanf("%d", &answer);

    flatpak(answer);

    if (answer == 1){
        // arch
        system("sudo pacman -Syu;sudo pacman -Sy vim neofetch git gcc brightnessctl kitty libreoffice-fresh fish;yay -Sy "
               "lolcat zip tree neovide github-cli");
        vs_code_install = vscode();

        if (vs_code_install) {
            system("git clone https://AUR.archlinux.org/visual-studio-code-bin.git");
            system("cd visual-studio-code-bin/");
            system("makepkg -s");
            system("sudo pacman -U visual-studio-code-bin-*.pkg.tar.xz");
            system("cd ../ && sudo rm -rfv visual-studio-code-bin/");
        }
        else
            printf("Okay! if you change your mind, go suck an egg\n");
    }
    else {
        // fedora
        system("sudo dnf install 'dnf-command(config-manager)'");
        system("sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo");

        system("sudo dnf update; sudo dnf install vim zip neofetch kitty brightnessctl gh git gcc libreoffice fish");

        vs_code_install = vscode();

        if (vs_code_install)
            system("curl --proto '=https' --tlsv1.2 -sSf https://gist.githubusercontent.com/zer0as/14e9a77f0e87ff0c8951e65705855b2a/raw/91cbb5ec01340d6cb1ad82a551a83d1fc241f62e/installvscode.sh | sh"); 
        else
            printf("Okay! if you change your mind, go suck an egg\n");
    }
    system("curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"); 
    printf("Here's the article if you would like to know how to change the default shell in linux -> https://www.geeksforgeeks.org/how-to-change-default-shell-in-linux/ \n");

    printf("Moving the important files to home directory");
    system("cp .vimrc .gitconfig ~/") // moves .vimrc and .gitconfig to home

    char response;

    printf("Make fish your default: ");
    scanf("%s", &response);

    if(response == 'Y' || response == 'y')
        fish();
    else
        printf("Again suck eggs!\n");

    flatpak(answer);



    return 0;
}

bool vscode() {
    char response;
    bool install;

    printf("Wanna install vscode? [y/N] ");
    scanf("%s", &response);

    if(response == 'Y' || response == 'y')
        install = true;        
    else
        install = false;

    return install;
}

void fish() {
    system("grep `whoami` /etc/passwd");
    system("cat /et/shell");
    system("sudo usermod --shell /bin/fish aryan"); // change aryan for your username!
    system("chsh -s /bin/fish aryan"); // same here

    printf("Check the /etc/passwd file for aryan:x:1000:1000::/home/aryan:/bin/fish");
    system("vim /etc/passwd");
}

void flatpak(int answer) {
        if (answer == 1) {
            // arch stuff
            system("sudo pacman -S flatpak");
            system("flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo");
        }
        else {
            // fedora stuff
            system("flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo");
        }
}

void shutdown(int answer) {
    if (answer == 1) {
        // arch stuff
        system("shutdown now");
    }
    else {
        // fedora stuff
        system("systemctl poweroff");
    }
}